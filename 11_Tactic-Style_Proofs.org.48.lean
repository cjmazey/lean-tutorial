import standard
import data.nat
open nat
-- BEGIN
definition double (x : nat) := x + x

variable f : nat → nat

example (x y : nat) (H1 : double x = 0) (H3 : f 0 = 0) : f (x + x) = 0 :=
by rewrite [↑double at H1, H1, H3]
-- END
