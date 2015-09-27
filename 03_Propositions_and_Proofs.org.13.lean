/- page 37 -/

import standard
theorem t1 (p q : Prop) (Hp : p) (Hq : q) : p := Hp

variables p q r s : Prop

check t1 p q                -- p → q → p
check t1 r s                -- r → s → r
check t1 (r → s) (s → r)    -- (r → s) → (s → r) → r → s

variable H : r → s
check t1 (r → s) (s → r) H  -- (s → r) → r → s
