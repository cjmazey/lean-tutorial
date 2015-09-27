/- page 38 -/

import standard
variables p q r s : Prop
premises (H1 : q → r) (H2 : p → q)

theorem t2 : p → r :=
assume H3 : p,
show r, from H1 (H2 H3)
