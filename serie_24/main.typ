#import "../../style.typ": *
#let ip(x,y) = $chevron.l #x ,#y chevron.r$
#stdtitle(
  [Lineare Algebra],
  [Serie 24],
  [Lukas Mengis],
)
#pagebreak()

= Exercise 1
== (a)
$
  overline(A + B) = overline(a_(i,j)) + overline(b_(i,j)) = overline(A) + overline(B)\
  => overline(A + B)^T = overline(A)^T + overline(B)^T
$
== (b)
$
  lambda in K\
  overline(lambda A)`T = overline(lambda a_(i,j))^T = overline(lambda) overline(a_(j,i)) = overline(lambda) dot overline(A)^T\
$
== (c)

$
  overline(overline(A)^T)^T = overline(overline(a_(j,i)))^T = a_(i,j) = A
$
== (d)
$
  overline(I_n)^T = overline(I_(n)) = I_(n)
$

== (e)

$
  overline(A C)^T =overline(sum_(k =1)^m a_(i,k) c_(k,j))^T = sum_(k =1)^m overline(a_(i,k) c_(k,j))^T = sum_(k =1)^m overline(c_(j,k)) dot overline(a_(k,i)) = overline(C)^T dot overline(A)^T
$
= Exercise 2


$
  chevron p,q chevron.r = integral_(0)^1 p(t) q(t) d t
$

== (a)
Find an orthonormal basis of the vector space of span${1,x,x^2}$
$
  p_1(x) &= 1\
   p_2(x) &= x - chevron 1,x chevron.r 1 = x - integral_(0)^1 1 x d x = x - 1/2 \
    p_3(x) &= x^2 - chevron 1,x^2 chevron.r 1 - chevron x-1/2,x^2 chevron.r (x-1/2)\
     &= x^2 - integral_(0)^1 1 x^2 d x - (integral_(0)^1 x^3 d x - integral_0^1 1/2 x^2)(x - 1/2)\
     &= x^2 - 1/3 - (x -1/2)(1/4 -1/6)\
     &= x^2 -1/12 x -7/24
    
$
$
  norm(p_1) &= sqrt(chevron 1 "," 1 chevron.r) = 1\
  norm(p_2) &= sqrt(chevron x-1/2 ","x-1/2 chevron.r) = sqrt(integral_(0)^1 (x-1/2)^2 d x) = 1/(2sqrt(3))\
  norm(p_3) &= sqrt(chevron x^2 -1/12 x -7/24 "," x^2 -1/12 x -7/24 chevron.r) = sqrt(integral_(0)^1 (x^2 -1/12 x -7/24)^2 d x) = sqrt(9795)/360
$
  
$
  e_1 &= p_1/norm(p_1) = 1\
   e_2 &= p_2/norm(p_2) = 2sqrt(3)(x - 1/2) = 2sqrt(3)x -sqrt(3)\
    e_3 &= p_3/norm(p_3) = 360/sqrt(9795)(x^2 -1/12 x -7/24)
$
== (b)
Take the basis from (a) and apply the differentiation operator D to it.
$
  D(e_1) = 0\
  D(e_2) = 2sqrt(3) = 2sqrt(3)e_1\
  D(e_3) = 360/sqrt(9795)(2x -1/12) = 720/sqrt(9795)x -30/sqrt(9795) = 360/sqrt(9795)e_2 + 330/sqrt(9795)e_1
   
$
$
  => D = mat(
    0, 2sqrt(3), 330/sqrt(9795);
    0, 0, 360/sqrt(9795);
    0, 0, 0;
  )
$
= Minimizing the distance to a subset.

let $p = P_U (v) in U$\
using pythagorean theorem\

$
  norm(v-u)^2 = norm(v-p)^2 + norm(p-u)^2 >= norm(v-p)^2\
  => norm(v-p) = norm(v- P_U (v)) <= norm(v-u)
$
$u = P_U (v) $
$
  => norm(v-P_U (v)) = norm(v-u) quad forall u in U
$

= Exercise 4

Let $ K = #R$. On $K[x]_5 $ with the inner product
$
  chevron p,q chevron.r = integral_(-pi)^(pi) p(t) q(t) d t
$
let $p(x)  = a x^5 + b x^4 + c x^3 + d x^2 + e x + f in K[x]_5 $\
We want to minimize the integral
$
  norm(sin -p)^2= chevron sin-p,sin-p chevron.r = integral_(-pi)^(pi) bar sin(t) - p(t))bar^2 d t
$
For this we need to compute the projection of $sin$ onto $K[x]_5$\
We can take the standard basis of $K[x]_5$ 
$
  B = (1,x,x^2,x^3,x^4,x^5)
$

$
  => chevron sin -p , 1 chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) d t = 0\
  => chevron sin -p , x chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) t d t = 0\
  => chevron sin -p , x^2 chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) t^2 d t = 0\
  => chevron sin -p , x^3 chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) t^3 d t = 0\
  => chevron sin -p , x^4 chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) t^4 d t = 0\
  => chevron sin -p , x^5 chevron.r = integral_(-pi)^(pi) (sin(t) - p(t)) t^5 d t = 0\
$

We can ignore the odd powers of x, since the product of an odd and an even function is odd and the integral of an odd function over a symmetric interval is zero.\
We get the following system of equations:
$
  integral_(-pi)^(pi) (sin(t) - a x^5 - c x^3 - e x) d t = 0\
  integral_(-pi)^(pi) (sin(t) - a x^5 - c x^3 - e x) x^2 d t = 0\
  integral_(-pi)^(pi) (sin(t) - a x^5 - c x^3 - e x) x^4 d t = 0\
$
we can compute the integrals:
$
  integral_(-pi)^(pi) t sin(t) d t &=2pi\
  integral_(-pi)^(pi)  t^3 sin(t) d t &= 2pi^3 -12pi\
  integral_(-pi)^(pi) t^5 sin(t) d t &= 2pi^5-40pi^3+240pi\

$
$
  =>\
  1/6 a pi^6 + 1/4 c pi^4 + 1/2 e pi^2 &= 2pi\
  1/8 a pi^8 + 1/6 c pi^6 + 1/4 e pi^4 &= 2pi^3 -12pi\
  1/10 a pi^10 + 1/8 c pi^8 + 1/6 e pi^6 &= 2pi^5 -40pi^3+240pi\
$
using Calculator we get:
$
  dots
$
= Exercise 5

Proof by counterexample:\
define the function $f_epsilon$
$
  f_epsilon (x) = cases(0 quad &x in [-1","1] without [-epsilon","epsilon],\
  (epsilon - abs(x))/epsilon  quad &x in [-epsilon "," epsilon]
 
  )
$
$
  => phi(f_epsilon) = 1 quad forall epsilon\
  integral_(-1)^1 f(x)g(x) d x &=  integral_(-epsilon)^epsilon f(x) g(x) d x\
  &<= M 2 epsilon 
$
The function $g$ is continuous therefore $ex M = max(g(x)), x in [-1,1]$\
Set $epsilon$ such that $2M epsilon < 1$. This means for every function $g$ we can find a function $f_epsilon$ contradicting the statement.

= Exercise 6

== (a)
$T^star$ is the adjoint operator of $T$ if 
$
  forall v in V,w in W: ip(T(v),w)_W = ip(v,T^star (w))_V\
  
$ 
Let $phi, T(v) in #R^E$
$
  ip(T(f),phi)_E &= sum_(e = (u,v)in E)  (f(v)-f(u))  phi(e)\
  &=  sum_(e = (u,v)in E) phi(e) f(v) - sum_(e = (u,v)in E) phi(e) f(u)\
  &= sum_(v in V) f(v) (sum_(e = (u,v))  phi(u,v) - sum_(e = (v,u)) phi(v,u))\
  &= sum_(v in V) f(v) S(phi)(v)\
  &= ip(f,S(phi))_V = ip(f,T^star (phi))_V\
$
#align(right)[$square$]
Let $e in E$
$
  T^star T(f)(e) &= sum_((u,v) in E) (f(v)-f(u)) -sum_((v,u) in E) (f(u)-f(v))\
$
== (b)
Define the basis as all vertices of the graph.\
Then we can compute the matrix of $T^star T$ with respect to this basis.\
Let $v_i$ be the i-th vertex of the graph.\
using the result from part (a) we have:
$  T^star T(v_i) &= sum_((u,v_i) in E) (v_i - u) - sum_((v_i,u) in E) (u - v_i)\
 &= sum_((u,v_i) in E) v_i - sum_((u,v_i) in E) u - sum_((v_i,u) in E) u + sum_((v_i,u) in E) v_i \
 &= deg(v_i) v_i - sum_((u,v_i) in E) u - sum_((v_i,u) in E) u + deg(v_i) v_i\
&= 2 deg(v_i) v_i - sum_((u,v_i) in E) u - sum_((v_i,u) in E) u\
$
since the graph is undirected and $deg(v_i) = d$ we have
$
  &=> T^star T(v_i) = 2 d v_i - 2 sum_(u ~v_i) u \
  &=> T^star T = 2 d I - 2 A\
  &=> (T^star T)_(i,j) = cases(2d quad &i = j, -2 quad &i ~ j, 0 quad & "otherwise")
$

Since the the Graph is undirected $=> A = A^T$. The Graph is $d$- regular, this means all vertices has degree $d$. Therefore the sum of ech row and columm of $A$ is $d$. 
$
  &=> sum_(j =1)^n I d -A_(i,j) = d -d = 0 quad forall i in {1,...,n}\
  &=> (T^star T) vec(1,1,dots.v,1)= 2 (I d -A) vec(1,1,dots.v,1) = 0\
$ 
$T^star T$ admits 0 as an eigenvalue.\


= Single Choice


=======
#set enum(numbering:"1.")
+ b
+ c
= Multiple Choice Fragen

a and b are correct.
