
#import "../../style.typ": *

#stdtitle(
  [Lineare Algebra],
  [Serie 22],
  [Lukas Mengis],
)
#pagebreak()

= Exercise 1


 $
    chevron.l x,y chevron.r_A = x^T A y = (x_1,x_2) mat(a_1,b;b,a_2) vec(y_1,y_2) = a_1 x_1 y_1 + b x_1 y_2 + b x_2 y_1 + a_2 x_2 y_2\
    => a_1 = 1 quad a_2 = 7 quad\
    A "muss positive definit sein" => a_1  a_2 - b^2 > 0 => |b| < sqrt(7)
  $
= Exercise 2\
a)
$

    p,q,s in V quad lambda in #R\
    chevron.l lambda q + s ,p chevron.r = integral_0^infinity lambda(q+s)(t)p(t)e^(-t)d t = lambda integral_0^infinity q(t)p(t)e^(-t)d t+ integral_0^infinity s(t)p(t)e^(-t)d t\
    chevron.l p,q chevron.r = integral_0^infinity p(t)q(t)e^(-t)d t =integral_0^infinity q(t)p(t)e^(-t)d t = chevron.l q,p chevron.r\
     chevron.l p,p chevron.r = 0 =integral_0^infinity p(t)p(t)e^(-t)d t => p=0\

  $
b)
  $
  g_(i j) = integral_0^infinity t^i  t^j e^(-t) d t= (i+j)!\ 
  => G = mat(0!,1!, dots.h,n!;1!,2!,dots.h,(n+1)!;dots.v, dots.v,dots.down,dots.v;!,(n+1)!,dots,(2n)!)
  $
= Exercise 3
$
  R : V &-> V\
 x &|->A x quad "with" A = mat(cos(theta), - sin(theta); sin(theta),cos(theta))\
$
Let $v,w in V$ then


$
chevron.l A v, A w chevron.r &= (v_1 cos(theta) - v_2 sin(theta))(w_1 cos(theta) - w_2 sin(theta)) \
&+ (v_1 sin(theta) + v_2 cos(theta))(w_1 sin(theta) + w_2 cos(theta)) \
&= v_1 w_1 (cos^2(theta) + sin^2(theta)) + v_2 w_2 (sin^2(theta) + cos^2(theta)) \
&= v_1 w_1 + v_2 w_2 \
&= chevron.l v, w chevron.r
$
Therefore
$
theta_2 &= cos^(-1)((chevron.l A v, A w chevron.r)/(||A v|| dot||A w||)) \
&=  cos^(-1)((chevron.l  v,  w chevron.r)/(||v|| dot||w||)) \
&= theta_1
$
they have the same angle


= Exercise 4
 == (a)
 
$
  (A A^T)^T = A^T^T A^T = A A^T
$
#align(right)[$square$]
== (b)
Eine Matrix ist positiv definit falls gilt
$
  forall x != 0 in #R^n quad x^T M x > 0\
$
angewendet auf $M = A A^T$
$
  x^T A^T A x = (A x)^T (A x) = ||A x||^2 > 0
$
Also $A x != 0 quad forall x !=0 <=> ker(A)={0} <=> A$ ist invertierbar. 

#align(right)[$square$]
== (c)
Wir wollen zuerst zeigen das gilt 
$
  ker(A A^T) = ker(A)
$
sei $x in ker(A^T A)$
$
  A^T A x &= 0\
  => x^T A^T A x &= 0 
$
da $x^T A^T A x  = ||A x||^2$ daher 
$
  x in ker(A x)
$
andere Seite.\ sei $x in ker(A x)$
$
  x^T A^T A x = x^T A^T *0 = 0
$
also $ker( A^T A ) = ker(A x)$\
#v(1em)
Es gilt $dim(im(A)) = rank(A)$ daher\
$
  rank(A) = dim(im(A)) = n - dim(ker(A)) = n - dim(ker(A^T A)) = dim(im(A^T A)) = rank(A^T A) 
$

#align(right)[$square$]

#pagebreak()
= Exercise 5
 == (a)
$x,y in V$
 $
   ||x + y||^2 = chevron.l x+y,x+y chevron.r =chevron.l x,x chevron.r + 2chevron.l y,x chevron.r + chevron.l y,y chevron.r\
   
   ||x - y||^2 = chevron.l x-y,x-y chevron.r =chevron.l x,x chevron.r - 2chevron.l y,x chevron.r + chevron.l y,y chevron.r\
   ||x+x||^2 + ||x-y||^2 = 2chevron.l x,x chevron.r +2chevron.l y,y chevron.r = 2||x||^2 + 2||y||^2
 $
 #align(right)[$square$]
 == (b)
 \
#set enum(numbering:"1.")
+ This norm is always positiv, since it is a sum of absolute values.
+ $v in V quad lambda in #R quad||lambda v || = sum_(i=1)^n |lambda v_i| = |lambda| sum_(i=1)^n|v_i|= |lambda|||v||$
+ $v,w in V quad ||v + w|| = sum_(i=1)^n|v_i+w_i| <= sum_(i=1)^n|v_i|+|w_i|=sum_(i=1)^n|v_i|+sum_(i=1)^n|w_i| = ||v||+||w||$ 

Counterexample:
using the _parallelogram identity_\
$x_1 = vec(0,1) quad x_2 = vec(1,0)\
||x_1||=||x_2||=1\
||x_1+x_2|| = ||x_1-x_2|| = 2\
$
$
  2^2+2^2 = 8 != 2*1 + 2*1= 4
$

= Exercise 6
Let $k = #R, V = m_(n times n)(K)$
$
chevron.l dot,dot chevron.r: V times V &-> K\
(A,B) &|-> "Tr"(A^T B) = sum_(i=1)^n sum_(j=1)^n a_(i j) b_(i j) 
$
Symmetric:\
$
chevron.l A ,B chevron.r = sum_(i=1)^n sum_(j=1)^n a_(i j) b_(i j) = sum_(i=1)^n sum_(j=1)^n b_(i j) a_(i j) = chevron.l B,A chevron.r
$
linearity $lambda in R quad A,B,C in V$\
$
chevron.l lambda A + C ,B chevron.r = sum_(i=1)^n sum_(j=1)^n (lambda a_(i j)+ c_(i j))b_(i j) = lambda chevron.l A ,B chevron.r + chevron.l C ,B chevron.r
$
Positive definite $A in V$
$
  chevron.l A ,A chevron.r = sum_(i=1)^n sum_(j=1)^n a_(i j)^2  quad forall a^2_(i j)>=0 quad =>   chevron.l A ,A chevron.r = 0 <=> A = 0
$


