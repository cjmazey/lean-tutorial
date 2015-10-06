/- page 81 -/

import standard
import data.bool data.prod data.nat data.prod data.sum
open prod sum nat bool
-- BEGIN
definition prod_example (p : bool × ℕ) : ℕ :=
prod.rec_on p (λ b n, cond b (2 * n) (2 * n + 1))

eval prod_example (tt, 3)
eval prod_example (ff, 3)
-- END
