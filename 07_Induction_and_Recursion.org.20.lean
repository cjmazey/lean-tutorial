/- page 108 -/

import standard
open nat

inductive finord : nat → Type :=
| fz : Π n, finord (succ n)
| fs : Π {n}, finord n → finord (succ n)

open finord

definition to_nat : Π {n : nat}, finord n → nat
| @to_nat ⌞n+1⌟ (fz n) := zero
| @to_nat ⌞n+1⌟ (fs f) := succ (to_nat f)
