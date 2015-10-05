/- page 65 -/

import standard
import data.nat
open nat

set_option pp.implicit true
set_option pp.universes true
set_option pp.notation false
set_option pp.numerals false

check 2 + 2 = 4
eval (λ x, x + 2) = (λ x, x + 3)

set_option pp.beta true
check (λ x, x + 1) 1
