#import "../../style.typ": *

#stdtitle(
  [Analysis 2],
  [Serie 8],
  [Lukas Mengis],
)
#pagebreak()

= Jordan-null set.

#set enum(numbering: "(a)")
+ Let $X subset #R$ be a Jordan-null set. $forall delta > 0, exists $ a collection of finitely many intervals such that
$
  X subset union.big_(j=1)^m  I_j quad and quad sum_(j=1)^m |I_j| < delta\
$
Then
$
  X times X subset union.big_(j=1)^m union.big_(i=1)^m (I_i times I_j)  \  sum_(j=1)^m sum_(i=1)^m |I_j||I_i| =  (sum_(j=1)^m |I_j|)(sum_(i=1)^m |I_i|)< delta^2
$

Set $epsilon > 0$ and $delta = sqrt(epsilon)$ 
$
  sum _(j,i) text("vol")(I_i times I_j) < epsilon
$
Therefore $X times X$ can be covered by finitely many squares with volume smaller than $epsilon$.

#align(right)[$square$]



+ Since $X, [0,1] subset #R$ Jordan-null set $exists $ finitely many intervals $I_i$ and $I_j$ covering $X $ and $[0,1]$
$
  X subset union.big_(i=1)^m I_i quad and quad sum_(i=1)^m |I_i| < epsilon \
$
it follows 
$
  X times [0,1] subset union.big_(i=1)^m (I_i times [0,1])
$
Ever $I_i times [0,1] $ is a rectangle with volume
$
  "vol"(I_i times [0,1]) = |I_i| dot 1 = |I_i|
$

therefore
$
  "vol"(X times [0,1]) <= sum_(i=1)^m|I_i| < epsilon
$
#align(right)[$square$]
= True or False.

#set enum(numbering: "1.")

+ true
+ true
+ true
+ true 
+ false
\
= Fat Boundary.\ 

An open self similar fractal.\
Define 
$
  S: & #R^n -> #R^n\
  & x |-> S(x)
$ 
Such that $x inter S(x) = emptyset$.\
Let $U_0$ be some open subset of $#R^n$.


$ 
U_m := union.big_(i=0)^(m-1) S_i(U_0) \
U = lim_(m -> infinity) U_m
$

Then $U$ is open.

For every $epsilon > 0$, there does not exist a finite family of sets
$A_1, dots, A_k$ with $A_j < epsilon$ such that

$ partial U subset union.big_(j=1)^k A_j $
therefore the $partial U$ is not a null set.


= Multiple Choice.

#set enum(numbering: "1.")
+ false
+ false
+ false
+ true

= Change of variables and Jacobians.
#set enum(numbering: "1.")
+ $
    x_1 = r cos(theta) quad x_2 = r sin (theta) bar det(mat(cos(theta), - r sin(theta); sin(theta), r cos(theta) )) bar = r\
    x_1 > 0 => -pi/2 < theta < pi/2 quad x_2 < x_1 => - (3pi)/4 < theta < pi/4 quad 1<x_1^2 + x_2^2 < 4 => 1 < r < 2 \
    x_1^2 sin(x_2) d x_1 d x_2 = r^2 cos^2(theta) sin(r sin(theta))    \
    integral _A x_1^2 sin(x_2)d x_1 d x_2 = integral_(-pi/2)^(pi/4)integral_1^2 r^3 cos^2(theta) sin(r sin(theta))  d r d theta

  $
+ $
    u = x y quad v = x^2 quad bar det(mat(y, x; 2x, 0)) bar = 2x^2 = 2v\
    1 < x y < 2 => 1 < u < 2 quad x^2 < y < 2x^2 => v < u / sqrt(v) < 2v => (u/2)^(2/3) < v < u^(2/3)\
    y^2 e^(-x y) d x d y= u^2/(2v^2) e^(-u) d u d v\
    => quad  integral_1^2integral_((u/2)^(2/3))^(u^(2/3))  u^2/(2v^2)e^(-u) ""d v d u\ 
  $
+ $
    u = z, quad v = z - 2y quad w = 3 x + y + z quad bar det(mat(0,0,1;0,-2,1; 3,1,1)) bar = 6\
    1 < v < 2 quad 0<u<1 quad -2<w<0\
    x y z  " "d x d y d z= 1/6 u (u-v)/2 (w-u-(u-v)/2)/3 " " d u d v d w = (u(u-v)(2w-3u+v)) /72 " " d u d v d w\
    integral_C x y z " " d x d y d z = integral_0^1 integral_1^2 integral_(-2)^0  (u(u-v)(2w-3u+v)) /72 " " d u d v d w
  $

s

