import standard
import data.nat
open nat

variable f : ℕ → ℕ
premise H : ∀ x : ℕ, f x ≤ f (x + 1)

-- BEGIN
example : f 0 ≥ f 1 → f 1 ≥ f 2 → f 0 = f 2 :=
assume `f 0 ≥ f 1`,
assume `f 1 ≥ f 2`,
have f 0 ≥ f 2, from le.trans `f 2 ≤ f 1` `f 1 ≤ f 0`,
have f 0 ≤ f 2, from le.trans (H 0) (H 1),
show f 0 = f 2, from le.antisymm this `f 0 ≥ f 2`
-- END
