/- page 38 -/

import standard
variables p q r s : Prop

theorem t2 (H1 : q → r) (H2 : p → q) : p → r :=
assume H3 : p,
show r, from H1 (H2 H3)
