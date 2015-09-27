/- page 37 -/

import standard
theorem t1 (p q : Prop) (Hp : p) (Hq : q) : p := Hp

variables p q r s : Prop

-- BEGIN
premise H : r → s
check t1 (r → s) (s → r) H
-- END
