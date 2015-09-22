import standard
import data.nat
open nat

-- BEGIN
variable f : ℕ → ℕ
premise H : ∀ x : ℕ, f x ≤ f (x + 1)

example (H' : ∃ x, f (x + 1) ≤ f x) : ∃ x, f (x + 1) = f x :=
obtain x `f (x + 1) ≤ f x`, from H',
exists.intro x
(show f (x + 1) = f x, from le.antisymm `f (x + 1) ≤ f x` (H x))
-- END
