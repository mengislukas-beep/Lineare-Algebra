#import "../../style.typ": *

#show: setup


#stdtitle(
  [Lineare Algebra],
  [Serie 25],
  [Lukas Mengis],
)
#pagebreak()


= 

Assume $U$ is invariant under $T$.\
$fa v in U, quad fa w in U^perp$

$
  0 = ip(v,w) = ip(T v,w) = ip(v,T^star w)
$
Since $v,w$ are arbitrary and $ip(v,T^star w) = 0 =>$ $U^perp$ is invariant under $T^star$.\
For the other direction we can do exactly the same proof. 
#align(right)[$square$]
=
define 
$
  t = f compose g_1 -f compose  g_2
$
From the exercise we know
$
  f^star compose f compose g_1 &= f^star compose f compose g_1\
 =>f^star compose t &= 0
$
$fa v in V$ 
$
  0 = ip(f^star (t(v)) ,v) = ip(h(v), f(v))

$
set 
$
  u = g_1(v)-g_2(v)\
$
since $f$ is linear
$
  t(v) &= f compose g_1(v) - f compose g_2(v\
  &= f compose (g_1(v)-g_2(v)) = f(u)
$
we get
$
  0 = ip(f^star (t(v)),u) = ip(h(v),f(u)) = ip(h(v),h(v))
$
$
  => abs(abs(h(v))) = 0\
  => h(v) =0\
  =>f compose g_1 = f compose g_2
$
=
since $T in End(V)$ a normal operator.
$
  T^star T = T T^star\
$ 
$=> $ there exists an orthonormal basis made with eigenvectors\
Additionally, we know that $V$ is equal to a finitely many orthogonal subspaces. Define $W_i$ equal to the span of the i-th orthonormal basis vector.
$
  W_i = span(e_1)\

  V = W_1 plus.o  dots plus.o W_k
$


Every vector $v in V$ can be written with a sum
$
  v = sum_(i=1)^n w_i, quad w_i in W_i
$
With
$
  P_W_i (v) = w_i
$

We have
$
  T(w_i) = lambda_i w_i, quad w_i in W_i
$
$fa v in V$
$
  => T(v) &= sum_(i =1)^k T(w_i) \
  &= sum_(i=1)^k lambda_i w_i\
  &= sum_(i=1)^k lambda_i P_W_i (v)
$
= 
==
$
  T "is self adjoint" <=> T = T^star
$
let $p_1(x) = 1,p_2(x) = x $
$
  ip(T p_1,p_2) = int_0^1 0  d x = 0\
  ip(p_1,T^star p_2) = ip(p_1,T p_2) = int_0^1 x d x = 1/2
$
Contradiction $=>$ T is not self adjoint
==
$(1,x,x^2)$ is not an orthonormal basis.
$
  [T^star] = [T]^star
$
is only true if T is a Matrix with respect to an orthonormal basis
=
==

Since $dim(V)< oo$ there exists a basis $cal(B)$ for V\
$
  cal(B) = {e_1,dots,e_n}
$
Define $phi$. Let $w in W, v in V$
$
  phi_w (v) : V &-> #R\
        v &|-> ip(f(v),w)
$
A linear map\
We want to find the unique adjoint map of $f$, which must fulfill:
$
  phi_w (v) = ip(f(v),w) = ip(v, f^star (w))
$

Choose an orthonormal basis $cal(B) = {e_1,dots,e_n}$ for $V$. Then $fa v in V$
$
  v = sum_(i=1)^n lambda_i e_i
$
Since $phi_w$ is linear
$
  phi_w (v) = sum_(i=1)^n lambda_i phi_w (e_i)
$
define $u$
$
  u = sum_(i=1)^n  phi_w (e_i) e_i 
$
Since the basis $cal(B)$ is orthonormal, most terms vanish.
$
  ip(v,u) =sum_(i=1)^n sum_(k=1)^n phi_w (v) lambda_ i ip(e_i, e_k) = sum_(i=1)^n sum_(k=1)^n lambda_i phi_w (e_k) delta_(i,k) =sum_(i=1)^n lambda_i phi_w (e_i) = phi_w (v)
$
Therefore, exists such a $u$.\
We want to show the uniqueness of this vector $u in V$.\
Assume we have two vectors $u_1,u_2$ such that
$
  ip(v,u_1) &= ip(v,u_2)\
  =>&0=ip(v,u_1-u_2)
$
This must be true for all $v in V$.\
Set
$
  v = u_1-u_2
$
$
  => ip(v,v) = 0\
  => abs(abs(u_1-u_2))^2 =0\
  u_1 = u_2
$
$=>ex! f'$
==




=
==
$D (f) =(d f)/(d x)$\
using integration by parts
$
  ip(D(f(x)), g(x)) &= 1/(2pi) int_0^(2pi) f'(x) g(x) d x\
  &= 1/(2pi) ( f(x)g(x))bar_0^(2pi) - int_0^(2pi) f(x)g'(x) d x )  \
  &= 0- 1/(2pi) int_0^(2pi) f(x) g'(x) d x \
  &= ip(f(x),-D(g(x)))
$
$=>D$ is not self adjoint \
$D^star (f) = -D(f)$
==
$
  ip(-Delta(f),g) &= ip(D(f), D(g))\
  &= ip(f, -D compose D (g))\
  &= ip(f, Delta (g))
$

$=>Delta$ is self-adjoint

==
Claim all functions in $U$ are mutually orthogonal.

#set enum(numbering:"1.")
+ $n=0$
  $
    &sin(0) = 0 quad "can't be an eigenvector"\
  
    &cos(0) = 1
  $
+ $n != 0$
  $
    &sin(n x)\
    &cos(n x)
  $
$
  ip(1, sin(n x)) &= 1/(2pi) int_0^(2pi) sin(n x) d x\
  &= 1/(2pi n) -cos(n x) bar_0^(2pi) = 0
$
$
  ip(1,cos(n x)) &= 1/(2pi) int_0^(2pi) cos(n x) d x = 0
$
$
  cos(n x) sin(n x) = 1/2(sin((n +n)x)+sin((n-n)x))
$
$
  =>ip(sin(n x),cos(n x)) &= 1/(2pi) int_0^(2pi) sin(n x)cos(n x) d x \
  &= 1/(2pi) int_0^(2pi) 1/2 sin(2n x) d x = 0
$

We must norm the functions
$
  abs(abs(ip(1,1))) &= 1/(2pi) int_0^(2pi) 1 dot d x = 1
$
using $sin^2(t) = (1-cos(2t))/2$ and $cos^2(t) = (1+cos(2t))/2$

$
  abs(abs(sin(n x)))^2 &= 1/(2pi) int_0^(2pi) sin^2(n x) d x\
  &= 1/(4pi) (int_0^(2pi) 1 d x- int_0^(2pi) cos(2n x)d x ) = 1/2
$
same for $cos^2(n x)$
$
  abs(abs(cos(n x)))^2 &= 1/2pi int_0^(2pi) (1+ cos(2 n x))/2d x\
  &= 1/(4pi) (int_0^(2pi) 1d x + int_0^(2pi)cos(2 n x)d x) = 1/2
$
We get and an orthonormal Basis $cal(B)$
$
  cal(B) = {1} union {sqrt(2)cos(n x), sqrt(2) sin(n x)bar n in #N without{0}}
$
Consider the function $Delta := - D compose D = -(d^2)/(d x^2)$.\
First case $e_0 = 1$
$
  Delta e_0 = 0
$
$
  => E_0 = span{1} quad "with multiplicitie =  1"
$
Case 2 $quad n >= 1bar n in #N     $
$
  Delta cos(n x) = n^2 cos( n x)\
  Delta sin(n x) = n^2 sin(n x)
$
Since $cos$ and $sin$ are linear independent
$
  E_(n^2) = span{sin(n x),cos(n x)} quad "with ialtiplicitie = 2"
$

= Multiple Choice
==
=== true
=== false
=== true

==
=== false
=== true
=== true
=== true
==
=== false
=== true
=== true 
=== true
=== true
