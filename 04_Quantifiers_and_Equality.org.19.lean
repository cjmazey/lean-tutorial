/- page 54 -/

import standard
import data.nat
open nat

-- BEGIN
example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
calc
(x + y) * (x + y) = (x + y) * x + (x + y) * y  : mul.left_distrib
... = x * x + y * x + (x + y) * y            : mul.right_distrib
... = x * x + y * x + (x * y + y * y)        : mul.right_distrib
... = x * x + y * x + x * y + y * y          : add.assoc
-- END

check mul.left_distrib
check mul.comm
check add.comm
check mul_sub_right_distrib
check add_sub_add_left

example (x y : ℕ) : (x - y) * (x + y) = x * x - y * y :=
  calc
    (x - y) * (x + y) = x * (x + y) - y * (x + y) : mul_sub_right_distrib
    ... = x * x + x * y - y * (x + y)             : mul.left_distrib
    ... = x * x + x * y - (y * x + y * y)         : mul.left_distrib
    ... = x * y + x * x - (y * x + y * y)         : add.comm
    ... = x * y + x * x - (x * y + y * y)         : mul.comm
    ... = x * x - y * y                           : add_sub_add_left
