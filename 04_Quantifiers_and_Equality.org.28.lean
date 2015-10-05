/- page 59 -/

import standard
import data.nat
open nat

variable f : ℕ → ℕ
premise H : ∀ x : ℕ, f x ≤ f (x + 1)

-- BEGIN
example : f 0 ≤ f 3 :=
have f 0 ≤ f 1, from H 0,
have f 0 ≤ f 2, from le.trans `f 0 ≤ f 1` (H 1),
show f 0 ≤ f 3, from le.trans `f 0 ≤ f 2` (H 2)
-- END
