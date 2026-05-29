#import "../../style.typ": *

#show: setup


#stdtitle(
  [Lineare Algebra],
  [Serie 27],
  [Lukas Mengis],
)
#pagebreak()


=
Trying to find eigenvectors

$
  v_1 = vec(1,-1,0)\
  A v_1 = vec(27,-27,0) = 27 v_1
$
$
  v_2 = vec(1,1,?)\
  A v_2 = vec(1 + 8?,1+8?,16-7?)\
  => 1+ 8x = (16-7x)/x\
  8x^2+8x-16 = 0 => x_(1,2) in {1,-2}
 $
$
  A vec(1,1,1) = 9 vec(1,1,1)\
  A vec(1,1,-2) = -15 vec(1,1,-2)
$
The tree vectors we found form an orthogonal basis for $#R^3$
$
  u_i = v_i/baar(v_i) = cases(sqrt(2)/2 vec(1,1,0), sqrt(3)/3 vec(1,1,1), sqrt(6)/6 vec(1,1,-2)) 
$
$=>$

$
  P = mat(1/sqrt(2) ,1/sqrt(3),1/sqrt(6); 1/sqrt(2),1/sqrt(3),1/sqrt(6);0,1/sqrt(3),-sqrt(6)/3)\
  P^(-1) = P^T 

$
=
==
Since $F: #R^4 ->#R^4$
$
  "injective" <=> "surjective" <=> "bijective"
$
$
  fa v,w in #R^4: quad s(F(v),F(w)) = s(v,w)
$
Let $F(v) = 0$
$
  s(F(v),F(v)) = s(0,0) = s(v,v)\
  => v=0
$
This implies that
$
  ker(F) = {0} <=> F "is injective" =>F "bijective"
$
==
===

Let $M = mat(T,0;0,plus.minus 1) quad T in O(3) quad v = vec(u,t) in #R^4 quad u in #R^3$
$
  M v = T u plus.minus t
$
Set $w = vec(u',t') quad u' = vec(x',y',z') $
$
  s(F(v),F(w)) &= s(M v,M w)\
  &= (T u)^T (T u') - (plus.minus t)(plus.minus t')\
  &=u^T T^T T u' - t t'\
  &= u u' - t t' \
  &= x x' + y y' + z z' - t t'\
  &=s(v,w) 
$
===
$
  B := mat(gamma , , ,-v gamma;,1, , ;,,1,;-v gamma,,,gamma)
$
$fa v,w in #R^4$
$
  s(v, w) := v^T diagonal(1,1,1,-c) w
$
We want to show that it doesn't change under Lorentz transformation.
$
  s(B v, B w) &= (B v)^T diagonal(1,1,1,-c) (B w)\
  &= v^T  B diagonal(1,1,1,-c) B w\
$
$
  B diagonal(1,1,1,-c) B = mat(gamma, , ,v c gamma; ,1, , ; , ,1,;-v gamma, , ,-c gamma)
$
$
  B diagonal(1,1,1,-c) B &= mat(gamma, , ,v c gamma; ,1, , ; , ,1,;-v gamma, , ,-c gamma) mat(gamma,,,-v gamma;,1,,;,,1,;-v gamma,,, gamma)\
  &= mat(gamma^2 ( 1 - v^2 c),,,gamma^2v(c-1);,1,,;,,1,;gamma^2v(c-1),,,gamma^2(v^2-c)) = 
$
Since $c = 1$
$
  =>dots = diagonal(1,1,1,-1)
$
Therefore 

$
  s(B v, B w) = v^T diagonal(1,1,1,-1) w = s(v ,w)
$

==
let $phi$ be a linear isometry with $det(phi) =1 $\
Define the set $C$\
$v in #R^4$
$
  C = {v in M bar s(v,v) = 0} <=>  x^2 + y^2 + z^2 = c t^2
$
Define
$
  A = diagonal(1,1,1,-1)
$
Since $phi$ is an isometry. Let $P$ be the representative Matrix of $phi$.
$
  P^T A P = A\
  P^T = A P^(-1) A\
  P^(-1) = A P^T A
  
$
Since $P in M_(4 times 4) (#R) $ It follows that if $lambda in #C$ is an eigenvalue than $1/ overline(lambda)$ is one to.\
Let $v$ be an eigenvector of $lambda$
$
  s(P v, P v) = lambda^2 s(v,v) = s(v,v)\
  => (lambda^2-1) s(v,v) = 0
$
if $lambda != plus.minus 1$
$
  => s(v,v) = 0
$
$v$ is an eigenvector in the light cone.\
if $lambda = plus.minus 1$\
?
=
=
==
Since $A$ is orthogonal every $ abs(lambda) = 1$.\
Since $p_A (t)$ is third order at least 1 eigenvalue has to be in $#R$.
$
  => lambda_1 = plus.minus 1
$
but 
$
  overline(p_A (lambda)) = p_A (overline(lambda)) = overline(0) = 0
$
$=>$ the complex eigenvalues appear pairwise
$
  det(A) = lambda_1 lambda_2 lambda_3 = lambda overline(lambda) lambda_1 = abs(lambda)^2 lambda_1 = lambda_1 =  1
$
==
let $v in #R^3$
$
  A v = v\
  (A-I)v = 0\
$
$
(a_11 - 1)v_1 + a_12 v_2 + a_13 v_3 = 0\

a_21 v_1 + (a_22 - 1)v_2 + a_23 v_3 = 0\

a_31 v_1 + a_32 v_2 + (a_33 - 1)v_3 = 0\
$
We can use the fact 
$
  baar(r_1 times r_2) = sin(theta) baar(r_1) dot baar(r_2)
$
$
  => v = vec(a_(1 1)-1,a_(1 2), a_(1 3)) times vec(a_(2 1), a_(2 2)-1, a_(2 3)) = vec(a_(1 2)a_(2 3) - a_(1 3) (a_(2 2)-1),a_(1 3) a_(2 1)- (a_(1 1)-1)a_(2 3),(a_(1 1)-1)(a_(2 2)-1)- a_(2 1)a_(1 2))
$
==
The matrix $A$ is a rotation over $span(v)$ from exercise b. Therefore, there exists a matrix $P$ invertible such that $R$ has the form
$
  A = P^(-1) R P\
  "with" quad R = mat(cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1)
$
Since $tr(A B C) = tr(B C A)$
$
  tr(A) = tr(P^(-1) R P) = tr(P P^(-1) R) = tr(R) = 2 cos(theta) + 1
$
$
  => cos(theta) = (tr(A)-1)/2
$