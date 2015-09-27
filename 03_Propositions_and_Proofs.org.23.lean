/- page 40 -/

import standard
variables p q r: Prop
-- BEGIN
example (H : p ∨ q) : q ∨ p := or.elim H (λ Hp, or.inr Hp) (λ Hq, or.inl Hq)
-- END
