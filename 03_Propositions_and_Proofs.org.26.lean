/- page 41 -/

import standard
variables p q : Prop
-- BEGIN
example (Hp : p) (Hnp : ¬p) : q := false.elim (Hnp Hp)
-- END
