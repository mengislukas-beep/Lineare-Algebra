#import "../../style.typ": *

#stdtitle(
  [Lineare Algebra],
  [Serie 23],
  [Lukas Mengis],
)
#pagebreak()


= Exercise 1

$S$ is an orthonormal set $=>$ $S$ is linearly independent and $||s_i|| = 1 quad  forall s_i in S$
$
  S = {s_1,s_2,dots, s_n} quad "linear independent"
$

Exend $S$ such that it forms a basis of $V$
$
  B &= {s_1,dots,s_n, v_1,dots, v_m}\
  Span(B) &= V
$
This basis is not yet orthonormal. With Gram-Schmidt we can transform every basis into an orthonormal basis.
$
  => B' = {s_1,dots,s_n,v_1',dots, v_m'}
$
= Exercise 2
== (a)
Let $A,C in M_(n times n) (#R)$ with $C = A A^T$

$
  c_(i j) = sum_(k=1)^n a_(i k) (a_(k j))^T = sum_(k=1)^n a_(i k) a_(j k) = sum_(k =1)^n a_(j k) (a_(k i))^T = c_(j i)
$
#align(right)[$square$]

== (b)
Assume $A^T A = A A^T$ is invertible
$
  x^T A^T A x = (A x)^T (A x) > 0 \
  => A x != 0 quad forall x!=0 => ker(A)={0}\
  => x^T A^T A x >0
$
$=> A$ positive definite

$A^T A$ positive definite.
Assume $A$ is not invertible then 
$
  exists x != 0 : A x = 0\
  => 0 = ||A x||^2 = (A x)^T (A x) = x^T A^T A x > 0 
 $
$=> $ this is a contradiction \
$=> A$ is invertible.
#align(right)[$square$] 
== (c)
Previous series

== (d)
$
  chevron.l A v_1, v_2 chevron.r = (A v_1)^T v_2 =  v_1^T A^T v_2 = chevron.l v_1, A^T v_2 chevron.r = chevron.l v_1, A v_2 chevron.r\
  => chevron A v_1 , v_2 chevron.r - chevron v_1 , A v_2 chevron.r= lambda_1 chevron v_1, v_2 chevron.r - lambda_2 chevron v_1, v_2 chevron.r= 0\
$
since $lambda_1 != lambda_2$
$
  chevron v_1 ,v_2 chevron.r =0\
  => v_1 perp v_2
$
#align(right)[$square$]
= Exercise 3
$A = Q R = (v_1,v_2,v_3) = mat(-1,1,-1;2,0,1;-1,1,0) $ Using Gram-Schmidt process 
$
  q_1 = v_1/(||v_1||)=v_1/3= vec((-1)/3,2/3,(-2)/3)\
  q_2 = v_2 - chevron v_2, q_1 chevron.r q_1 = v_2 - (-1) dot q_1 = vec(2/3,2/3,1/3)\
  q_3 = v_3 - chevron v_3, q_1 chevron.r q_1 -chevron v_3, q_2 chevron.r q_2 =  v_3 - 1 dot q_1 - 0 dot q_2 = vec((-2)/3,1/3,2/3)\
  => A = Q R =  mat(-1,1,-1;2,0,1;-1,1,0)= mat((-1)/3,2/3,(-2)/3;2/3,2/3,1/3;(-2)/3,1/3,2/3) dot mat(3,-1,1;0,1,0;0,0,1)\
$
use to solve for $A x = b$ for $b = vec(0,3,-3)$
$
  A x = Q R x = b \
  => x = R^(-1) Q b\
  R^(-1) = mat((1)/3, 1/3,(-1)/3;0,1,0;0,0,1)\
  =>x = vec(2,1,-1) 

$
= Exercise 4
== (a)

Gram-Schmidt\
to find a basis $B={b_1,b_2}$ basis for $U$
$
  q_1 = v_1/(||v_1||)= sqrt(3)/3 vec(1,1,1)\
  q_2 = v_2 - chevron.l v_2, q_1 chevron.r q_1 = v_2 - sqrt(3) dot  q_1 = vec(-1,1,0)\
  => b_1= q_1= sqrt(3)/3vec(1,1,1) quad b_2 = q_2/(||q_2||)= vec(-sqrt(2)/2,sqrt(2)/2,0)
$
$dim (U^perp) = 3 - dim(U) = 1$
$
  B' &= {b_1^'}\
  b_1^' &= |b_1 times b_2| = sqrt(6)/6 vec(1,1,1) times vec(-1,1,0) = sqrt(6) /6 vec(-1,-1,2)
$
== (b)
$
  phi: #R^3 &-> U\
  x &|-> P x\
$
with 
$

  P=b_1 b_1^T + b_2 b_2^T = 1/3 mat(1,1,1;1,1,1;1,1,1) + 1/2 mat(1,-1,0;-1,1,0;0,0,0) = 1/6 mat(5,-1,2;-1,5,2;2,2,2)\

$
$
  psi: #R^3 &-> U^perp\
  x &|-> P^perp x\
$
with
$
  P^perp = b_1^'b'_1^T=1/6 mat(1,1,-2;1,1,-2;-2,-2,4) = I - P
$

= Exercise 5
== (a)
$
  =>U^perp = {(a_n)_(n=0)^(oo) in V| exists N >= 0:forall m < N : a_m = 0} 
$
since
$
  lim_(N -> oo)N = oo\
  => U^perp = {(a_n)_(n=0)^(oo) in V|forall m <oo : a_m = 0} = {0}

$
== (b)

$g in U^perp quad f in U$
$
  => chevron f, g chevron.r = integral_0^1 f(x)g(x) d x = integral_0^(1/2) f(x)g(x) d x = integral_(1/2)^1 f(x)g(x)d x = 0
$
between $[1/2, 1]$ we have no information about the function $f(x)$, therefore 
$
  g(x) = cases(g(x) &quad x  #R without (1/2,1), 0 &quad x in [1/2,1]
  )
$
One could give a long proof and show that it has to be constant on $[1/2,1]$
$
  => U^perp = {g in V |forall x in (1/2,1): g'(x)=0}
$

= Exercise 6

== (a)

$
  delta : V ->V^star, quad v |-> delta(v) = chevron v, dot chevron.r\
  delta(v)(w) = chevron v,w chevron.r
$
$delta$ is an isometry. Therefore
$
  chevron delta(v), delta(w) chevron.r^star = chevron v , w chevron.r quad forall v,w in V\
$

since $delta$ is an isomorphism 
$
  forall v in V quad exists! phi in V^star: delta(v) = phi\
  forall w in V quad exists! psi in V^star: delta(w) = psi\
  => chevron phi, psi chevron.r^star = chevron delta(v), delta(w) chevron.r^star = chevron v, w chevron.r
$ 
Assume by contradiction there exists 2 scalar products on $V^star$
$
  chevron phi, psi chevron.r_1^star = chevron v ,w chevron.r\
  chevron phi , psi chevron.r_2^star = chevron v,w chevron.r\
  => chevron phi,psi chevron.r_1^star = chevron phi,psi chevron.r_2^star 
$
they are equal
#align(right)[$square$]

== (b)
Define the Gram Matrices 
$
  G = [chevron dot,dot chevron.r]_B\
  G^star = [chevron dot,dot chevron.r^star]_(B^star)

$
Let $phi,psi in V^star quad v,w in V: quad phi = delta^(-1)(v), psi =delta^(-1)(w)$
$
  chevron phi,psi chevron.r^star = chevron delta^(-1) (phi), delta^(-1) (psi)chevron.r = chevron v,w chevron.r\
  G^star = [chevron dot,dot chevron.r^star]_(B^star) = ([chevron dot,dot chevron.r]_(B))^(-1) = G^(-1)
$
$=>$ The representation matrix of $chevron dot,dot chevron.r^star$ with respect to $B^star$ is equal to the inverse of the representation matrix of $chevron dot, dot chevron.r$ with respect to $B$.
#align(right)[$square$]
= Single Coice
#set enum(numbering: "1.")
+ (d)
+ (a)
+ (d)
+ (b)
= Multiple Choice Questions
#set enum(numbering: "1.")
+ \
  #set enum(numbering:"(a)")
  + true
  + false
  + false
  + true
+ \
  #set enum(numbering:"(a)")
  + false
  + true 
  + false
  + true
+ \
  #set enum(numbering:"(a)")
  + false
  + true 
  + true
  + true