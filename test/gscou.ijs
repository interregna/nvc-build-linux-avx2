1:@:(dbr bind Debug)@:(9!:19)2^_44[(echo^:ECHOFILENAME) './gscou.ijs'
NB. s: unicode -----------------------------------------------------

NB. literal2
c=: ' a b cd chthonic boustrophedonic octothorpe'
t=: s: c
s=: s: u: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

d=: ' triskaidekaphobia paronomasia tasis litotes metonymic'
t=: s,s: d
(1 s: t) -: ; '`'&,   &.><;._1 c,d
(2 s: t) -: ; ,&(0{a.)&.><;._1 c,d
(3 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: t) -:  <;._1 c,d

i=: ?~#t
(1 s: i{t) -: ; i{'`'&,   &.><;._1 c,d
(2 s: i{t) -: ; i{,&(0{a.)&.><;._1 c,d
(3 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: i{t) -: i{ <;._1 c,d

NB. literal4
c=: ' a b cd chthonic boustrophedonic octothorpe'
t=: s: c
s=: s: 10&u: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

d=: ' triskaidekaphobia paronomasia tasis litotes metonymic'
t=: s,s: d
(1 s: t) -: ; '`'&,   &.><;._1 c,d
(2 s: t) -: ; ,&(0{a.)&.><;._1 c,d
(3 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: t) -:  <;._1 c,d

i=: ?~#t
(1 s: i{t) -: ; i{'`'&,   &.><;._1 c,d
(2 s: i{t) -: ; i{,&(0{a.)&.><;._1 c,d
(3 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: i{t) -: i{ <;._1 c,d

NB. literal2+literal4
c=: a.{~ 128+a.i. ' a b cd chthonic boustrophedonic octothorpe'
t=: s: u: c
s=: s: 10&u: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

d=: a.{~ 128+a.i. ' triskaidekaphobia paronomasia tasis litotes metonymic'
t=: s,s: d
(1 s: t) -: ; '`'&,   &.><;._1 c,d
(2 s: t) -: ; ,&(0{a.)&.><;._1 c,d
(3 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: t) -: (<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: t) -:  <;._1 c,d

i=: ?~#t
(1 s: i{t) -: ; i{'`'&,   &.><;._1 c,d
(2 s: i{t) -: ; i{,&(0{a.)&.><;._1 c,d
(3 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>0{a.
(4 s: i{t) -: i{(<;._1 c,d) ,&> ((>./ - ])#;.1 c,d)$&.>' '
(5 s: i{t) -: i{ <;._1 c,d

NB. literal2
c=: ' zeugma deesis acyron meiosis bdelygma chiasmus'
s=: s: u: c
t=: s: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

s -:    s: ];._1 u: c
s -:    s: <;._1 u: c
s -: _1 s:    u: c
s -: _2 s: 1|.u: c
s -: _3 s: (<;._1 u: c) ,&> ((>./ - ])#;._1 c)$&.>u: 0
s -: _4 s: ];._1 u: c
s -: _5 s: <;._1 u: c
0 s: 11
1 [ s: <u: 128+a.i. 'force even alignment ',":?1e9
0 s: 11
1 [ s: <u: 128+a.i. 'force padding ',":?1e9

0 s: 11
10 s: 0 s: 10
0 s: 11

c=: a.{~ 128+a.i. ' zeugma deesis acyron meiosis bdelygma chiasmus'
s=: s: u: c
t=: s: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

s -:    s: ];._1 (10&u:) c
s -:    s: <;._1 (10&u:) c
s -: _1 s:    10&u: c
s -: _2 s: 1|.10&u: c
s -: _3 s: (<;._1 (10&u:) c) ,&> ((>./ - ])#;._1 c)$&.>(10&u:) 0
s -: _4 s: ];._1 (10&u:) c
s -: _5 s: <;._1 (10&u:) c

1 [ s: <10&u: 65536+a.i. 'force even alignment ',":?1e9
1 [ s: <10&u: 65536+a.i. 'force padding ',":?1e9

c=: a.{~ 128+a.i. ' zeugma deesis acyron meiosis bdelygma chiasmus'
s=: s: 10&u: c
t=: s: u: c
s -: t
s -:&(6&s:) t
(1 s: s) -: ; '`'&,   &.><;._1 c
(2 s: s) -: ; ,&(0{a.)&.><;._1 c
(3 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>0{a.
(4 s: s) -: (<;._1 c) ,&> ((>./ - ])#;.1 c)$&.>' '
(5 s: s) -:  <;._1 c

0 s: 11
10 s: 0 s: 10
0 s: 11

NB. sbunstr
(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ u: _10 ]\ b=: 32+ 50?50)
2 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ u: _10 ]\ b=: 32+ 50?50)
2 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ 10&u: _10 ]\ b=: 32+ 50?50)
2 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ 10&u: _10 ]\ b=: 32+ 50?50)
2 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ 10&u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ 10&u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ 10&u: _10 ]\ b=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ 10&u: _10 ]\ b=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ u: _10 ]\ a=: 128+ 50?50),(s: <"1[ 10&u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ u: _10 ]\ a=: 128+ 50?50),~(s: <"1[ 10&u: _10 ]\ b=: 128+ 50?50)
131072 = 3!:0[ 2 s: d

(a,b)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ u: _10 ]\ a=: 128+ 50?50),(s: <"1[ 10&u: _10 ]\ b=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d
(a,~b) -: 0-.~ 3 u: 2 s: d=: (s: <"1[ u: _10 ]\ a=: 128+ 50?50),~(s: <"1[ 10&u: _10 ]\ b=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d

(a,b,c)  -: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),(s: <"1[ u: _10 ]\ b=: 128+ 50?50),(s: 10&u: _10 ]\ c=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d
(a,~b,~c)-: 0-.~ 3 u: 2 s: d=: (s: <"1[ _10 ]\ a.{~ a=: 32+50?50),~(s: <"1[ u: _10 ]\ b=: 128+ 50?50),~(s: 10&u: _10 ]\ c=: 65536+ 50?50)
262144 = 3!:0[ 2 s: d

NB. sbprobe
c=: s: <"0 a.
256 = #~.c
s=: s: <"0 [10&u: (i.512),65536+i.512
1024 = #~.s
t=: s: <"0 u:i.512
512 = #~.t

0 s: 11

4!:55 ;:'a b c d i s t u'

