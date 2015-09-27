/- page 40 -/

import standard
variables p q : Prop
-- BEGIN
example (Hp : p) : p ∨ q := or.intro_left q Hp
example (Hq : q) : p ∨ q := or.intro_right p Hq
-- END
