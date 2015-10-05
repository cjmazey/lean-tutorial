/- page 60 -/

import standard
definition imp_self (p : Prop) : p → p :=
assume `p`, `p`

print imp_self

definition imp_self2 (p : Prop) : p → p → p :=
assume `p` `p`, `p`

print imp_self2
