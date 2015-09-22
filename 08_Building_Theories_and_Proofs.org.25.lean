import standard
import standard
open nat

section
variables x y : ℕ

definition double := x + x

check double y
check double (2 * x)

theorem t1 : double x = 2 * x :=
calc
double x = x + x         : rfl
... = 1 * x + x     : one_mul
... = 1 * x + 1 * x : one_mul
... = (1 + 1) * x   : mul.right_distrib
... = 2 * x         : rfl

check t1 y
check t1 (2 * x)

theorem t2 : double (2 * x) = 4 * x :=
calc
double (2 * x) = 2 * (2 * x) : t1
... = 2 * 2 * x   : mul.assoc
... = 4 * x       : rfl
end
