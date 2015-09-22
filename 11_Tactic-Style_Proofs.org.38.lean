import standard
import data.nat
open nat

example (x y : nat) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
by rewrite [*mul.left_distrib, *mul.right_distrib, -add.assoc]
