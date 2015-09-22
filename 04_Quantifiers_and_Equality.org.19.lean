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
