/- page 48 -/

import standard
variables (A : Type) (r : A → A → Prop)
variable trans_r : ∀ x y z, r x y → r y z → r x z

variables (a b c : A)
variables (Hab : r a b) (Hbc : r b c)

check trans_r          -- ∀ (x y z : A), r x y → r y z → r x z
check trans_r a b c
check trans_r a b c Hab
check trans_r a b c Hab Hbc
