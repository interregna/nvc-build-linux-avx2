1:@:(dbr bind Debug)@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g520p.ijs'
NB. { permutations and permutation groups -------------------------------

NB. Generating any permutation as a sequence of 0&C. (rotating by 1)
NB. and _2&C. (transposing the last 2 items), based on the idea that
NB.   p=:  0 C. i.n
NB.   q=: _2 C. i.n
NB. can generate
NB.   p0=: {/ (n=>:i.2+n) { p,:q
NB.   q0=: q
NB. which are similar to p and q except that the leading item
NB. is invariant under permutation by p0 and q0.  e.g. for n=:7
NB.    p:   1 2 3 4 5 6 0
NB.    q:   0 1 2 3 4 6 5
NB.    p0:  0 2 3 4 5 6 1
NB.    q0:  0 1 2 3 4 6 5

gen      =: gn { generator@#
generator=: (,.0 _2)"_ C. i.

gn=: 3 : 0
 0 ,~ (0 C. i.#y) gn y
 :
 if. 2=n=. #y do.
  (x-:y)}.1
 else.
  m=. x i. {.y
  (m#0) ,~ ; ((m|.x) gn&}. y) { (n=>:i.2+n) ; 1
 end.
)

test=: 3 : 0 " 1
 assert. (1<#y) *. 0~:C.!.2 y
 s=. gen y
 assert. y -: {/s
 assert. (~.s) e. generator #y
 1
)

test@(?~)"0 ] 2+?2 10$8

NB. the subgroup generated by a permutation or matrix of permutations

stdarg  =: i.@{:@$ , ,:^:(1: -: #@$)
pvp     =: ~.@(,/)@({"1/~)
subgroup=: pvp^:_ @ stdarg

NB. all permutations of i.n

perm =: i.@! A. i.

(perm -: /:~@subgroup@generator)"0 ]2+i.4

 
4!:55 ;:'gen generator gn perm pvp stdarg subgroup test'

