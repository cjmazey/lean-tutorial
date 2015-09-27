/- page 42 -/

import standard
variables p q : Prop
-- BEGIN
theorem and_swap : p ∧ q ↔ q ∧ p :=
iff.intro
(assume H : p ∧ q,
show q ∧ p, from and.intro (and.right H) (and.left H))
(assume H : q ∧ p,
show p ∧ q, from and.intro (and.right H) (and.left H))

check and_swap p q    -- p ∧ q ↔ q ∧ p
-- END
