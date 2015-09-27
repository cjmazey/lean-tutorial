/- page 39 -/

import standard
variables p q : Prop
-- BEGIN
example (H : p ∧ q) : p := and.elim_left H
example (H : p ∧ q) : q := and.elim_right H
-- END
