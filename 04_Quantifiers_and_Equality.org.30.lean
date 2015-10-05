/- page 59 -/

import standard
import data.nat
open nat

variable f : ℕ → ℕ
premise H : ∀ x : ℕ, f x ≤ f (x + 1)

-- BEGIN
example : f 0 ≥ f 1 → f 0 = f 1 :=
suppose f 0 ≥ f 1,
show f 0 = f 1, from le.antisymm (H 0) this
-- END
