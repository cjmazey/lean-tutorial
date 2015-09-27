/- page 41 -/

import standard
variables p q r : Prop
-- BEGIN
example (Hnp : ¬p) (Hq : q) (Hqp : q → p) : r :=
absurd (Hqp Hq) Hnp
-- END
