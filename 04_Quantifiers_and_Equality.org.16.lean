/- page 53 -/

import standard
import data.nat
open nat eq.ops

example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
have H1 : (x + y) * (x + y) = (x + y) * x + (x + y) * y, from !mul.left_distrib,
have H2 : (x + y) * (x + y) = x * x + y * x + (x * y + y * y),
from !mul.right_distrib ▸ !mul.right_distrib ▸ H1,
!add.assoc⁻¹ ▸ H2
