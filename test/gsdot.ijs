1:@:(dbr bind Debug)@:(9!:19)2^_44[(echo^:ECHOFILENAME) './gsdot.ijs'
NB. S: ------------------------------------------------------------------

phi=: * -.@%@~.&.q:      NB. Euler's totient function
t=: 5!:2 <'phi'

(;:'* -.@%@~.&.q:') -: < S: 0 t

(0 0;0 0) -: (] S: 0) L:  1 t=: 2 $ <0;0
(0 0;0 0) -: (] S: 0) L: _1 t=: 2 $ <0;0
(0 0;0 0) -: >        L:  1 t=: 2 $ <0;0


'domain error' -: ] S: 1 etx 1;<<1 2 3
'domain error' -: ; S: 2 etx 1;<<1 2 3


4!:55 ;:'phi t'


