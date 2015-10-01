/- page 49 -/

import standard
variables (A : Type) (r : A → A → Prop)

variable refl_r : ∀ x, r x x
variable symm_r : ∀ {x y}, r x y → r y x
variable trans_r : ∀ {x y z}, r x y → r y z → r x z

example (a b c d : A) (Hab : r a b) (Hcb : r c b) (Hcd : r c d) : r a d :=
trans_r (trans_r Hab (symm_r Hcb)) Hcd
