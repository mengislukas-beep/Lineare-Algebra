#import "../../style.typ": *

#show: setup


#stdtitle(
  [Lineare Algebra],
  [Serie 26],
  [Lukas Mengis],
)
#pagebreak()
=
Let $v,w in V$ and $b$ symmetric bilinear from of $V$ \
with:
$
  q_B (v) = B(v,v) = ip(v,v)
$
Since $B$ is linear and bilinear
$
  B(w+v,w+v) &= ip(v,w+v) + ip(w,w+v) \
  &=ip(v,v) + ip(v,w) + ip(w,w) + ip(w,v)\
  &= q_B (v) + q_B (w) + 2 B(v,w)
$
$
  => B(v,w) = 1/2(q_B (v+w) - q_B (v) -q_B (w)).
$
=
==
Let A be a real Matrix
$
  A := 1/3 mat(2,-2,1;-1,-2,-2;2,1,-2) = mat(bar.v,bar.v,bar.v;v_1,v_2,v_3;bar.v,bar.v,bar.v)
$
$
  abs(vec(2,-1,2))/3 = sqrt(4+1+4)/3 = 1\
  abs(vec(-2,-2,1))/3= sqrt(4+4+1)/3 = 1\
  abs(vec(1,-2,-2))/3 = sqrt(1+4+4)/3 = 1
$
$
  ip(v_1,v_2) = (-4 +2+2)/9 = 0\
  ip(v_1,v_3) = (2+2 -4 )/9= 0\
  ip(v_2,v_3) = (-2 +4-2)/9 =0
$
$=>$ $v_1,v_2,v_3$ form an orthonormal Basis. Therefore, $det(A)=1$ and $A$ is orthogonal
==
We want to find the fixed points
$
  A v = v\
  => (A-I)v &= 0\
  &= 1/3 mat(-1,-2,1;-1,-5,-2;2,1,-5) v = 0\
  => v in span( vec(-3,1,-1) )
$
$=> span(v)$ is the rotational axis.
Set $w = vec(0,1,1)$
$
  v dot w = 
  vec(-3,1,-1) dot vec(0,1,1) = 0 + 1 -1= 0
$

$
  cos(phi) &= (w dot A w)/(abs(abs(w)) dot abs(abs(A w  ))) \ 
  &= (-1-4)/(sqrt(2)sqrt(18)) \
  => phi = cos^(-1) (-5/6)
$
=
==
$
  det(3) = 3 > 0\
  det(mat(3,3;3,1)) = -6 <0
$
$A$ is not positive definite
==
$
  det(6) = 6 > 0\
  det mat(6,3;3,7) = 33 > 0\
  det mat(6,3,4;3,7,3;4,3,8) = 170 > 0
$
$B$ is positive definite
==
maybe, maybe not
=
==
Let $A in M_(n times n)(#R)$ be a symmetric matrix and $A$ is positive definite.\
$fa v in #R^n without {0}$\
$(A)=> (B)$\
Let $lambda$ be an eigenvalue for $v$
$
  A v = lambda v\
$
$A$ is positive definite
$
  v^T A v = v^T lambda v = abs(abs(v))^2 lambda >0\
  abs(abs(v))^2 > 0 => lambda >0

$
$(B)=> (C)$
Since $A$ is symmetric $=>$ $A$ is orthogonal diagonalizable
$
  A = P^T D  P
$
with $D = diag()$. $A$ and $D$ have the same eigenvalues (all greater than 0)
$
  D = S^2 = "diag" (sqrt(lambda_1),dots,sqrt(lambda_n))^2= diag()
$
Since every eigenvalue is greater than 0, the square root of the eigenvalues is in $#R$
$
  A = P^T D P = P^T S^2 P = P^T S P P^T S P = (P^T S P)^2
$
$(P^T S P)$ is symmetric and invertible since $S$ is invertible and $P$ to. \
$(C)=> (A)$
$
  S^2 = A
$
$
  v^T A v = v^T S^2 v = v^T  S^T S v = baar(S v)^2 > 0
$
=
==
$f$ does a combination of rotation and reflection
$
  f : V &-> V\
  x &|-> R x, quad with R "orthogonal Matrix"
$ 
Every row and column has length 1
$
  => abs(r_(i,j)) <= 1\
  Tr(f) = sum_(i=1)^n r_(i i) <= sum_(i=1)^n 1 = n\
  Tr(f) = sum_(i=1)^n r_(i i) >= sum_(i=1)^n-1 = -n\
  => abs(Tr(f)) <= n
$
==
$abs(Tr(f)) = n => R = I $ or $R = -I$ 


=
Two 2-dimesional subspaces $E_1, E_2 subset #R^3$ \
Set $E_1$ and $E_2$ equal to the span of each two orthonormal vectors.
$
  E_1 = span(e_1,e_2) quad E_2 = span(e'_1,e'_2 )
$
Since the basis vectors are orthonormal there exists an orthogonal endomorphism $R$ from one set of basis vectors to the others. 
$
  R mat(bar.v,bar; e_1,e_2;bar,bar) =  mat(bar,bar;e'_1,e'_2;bar,bar)
$
$
  => R E_1 = E_2 
$
Add to the bases a third vector such that $span(e_1,e_2,e_3)=span(e'_1,e'_2,e'_3) = #R^3$. \
with
$
 e_3 := e_1 times e_2 quadd e'_3 := e'_1 times e'_2 
$
$T=R$
$
  T_1(e_1,e_2,e_3) = mat(cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1) vec(e'_1,e'_2,e'_3)
$
or
$
  
  T_2(e_1,e_2,e_3) = mat(cos(theta),sin(theta),0;sin(theta),-cos(theta),0;0,0,-1) vec(e'_1,e'_2,e'_3)
$
$theta in [0,2pi)$
$
  => T_1(E_1) = T_2(E_1) = E_2
$