#!/bin/sh

realpath()
{
 oldpath=`pwd`
 if ! cd $1 > /dev/null 2>&1; then
  cd ${1##*/} > /dev/null 2>&1
  echo $( pwd -P )/${1%/*}
 else
  pwd -P
 fi
 cd $oldpath > /dev/null 2>&1
}

cd "$(realpath "$0")"
echo "entering `pwd`"

jplatform=linux
j64x=j64avx2
CC=nvc
export CC

compiler=$(readlink -f $(command -v $CC) 2> /dev/null || echo $CC)
echo "CC=$CC"
echo "compiler=$compiler"

# OPENMP=" -fopenmp "
# LDOPENMP=" -fopenmp "
common=" $OPENMP -v -Mnoopenmp -fPIC -O2 -fvisibility=hidden -fno-strict-aliasing -Mint128 -Mm128 "

common="$common -DSLEEF=1"

NO_SHA_ASM="${NO_SHA_ASM:=0}"

common="$common -DNO_SHA_ASM"

SRC_ASM_LINUX=" \
 keccak1600-x86_64-elf.o \
 sha1-x86_64-elf.o \
 sha256-x86_64-elf.o \
 sha512-x86_64-elf.o "

OBJS_BASE64=" \
  ../../../../base64/lib/arch/avx2/codec-avx2.o \
  ../../../../base64/lib/arch/generic/codec-generic.o \
  ../../../../base64/lib/arch/neon64/codec-neon64.o \
  ../../../../base64/lib/arch/ssse3/codec-ssse3.o \
  ../../../../base64/lib/arch/sse41/codec-sse41.o \
  ../../../../base64/lib/arch/sse42/codec-sse42.o \
  ../../../../base64/lib/arch/avx/codec-avx.o \
  ../../../../base64/lib/lib.o \
  ../../../../base64/lib/codec_choose.o \
  ../../../../base64/lib/tables/tables.o \
"

#linux_j64avx2) # linux intel 64bit avx2
TARGET=libj.so
CFLAGS="$common -DC_AVX=1 -DC_AVX2=1 "
LDFLAGS=" -shared -Wl,-soname,libj.so -lm -ldl $LDOPENMP $LDTHREAD"
CFLAGS_SIMD=" -march=haswell -mavx2 -mfma -mbmi -mbmi2 -mlzcnt -mpopcnt "
OBJS_FMA=" gemm_int-fma.o "
OBJS_AESNI=" aes-ni.o "
SRC_ASM="${SRC_ASM_LINUX}"
GASM_FLAGS=""
FLAGS_SLEEF=" -DENABLE_AVX2 "
FLAGS_BASE64=" -DHAVE_AVX2=1 "

OBJS_SLEEF=" \
 ../../../../sleef/src/common/arraymap.o \
 ../../../../sleef/src/common/common.o \
 ../../../../sleef/src/libm/rempitab.o \
 ../../../../sleef/src/libm/sleefsimddp.o \
 "

echo "CFLAGS=$CFLAGS"

if [ ! -f ../jsrc/jversion.h ] ; then
  cp ../jsrc/jversion-x.h ../jsrc/jversion.h
fi

mkdir -p ../bin/$jplatform/$j64x
mkdir -p obj/$jplatform/$j64x/
cp makefile-libj obj/$jplatform/$j64x/.
export CFLAGS LDFLAGS TARGET CFLAGS_SIMD GASM_FLAGS FLAGS_SLEEF FLAGS_BASE64 DLLOBJS LIBJDEF LIBJRES OBJS_BASE64 OBJS_FMA OBJS_AESNI OBJS_AESARM OBJS_SLEEF OBJS_ASM SRC_ASM jplatform j64x
cd obj/$jplatform/$j64x/
make -f makefile-libj
cd -
