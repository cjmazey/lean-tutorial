/- page 53 -/

import standard
import data.nat
open nat

variables (a b c d e : nat)
variable H1 : a = b
variable H2 : b = c + 1
variable H3 : c = d
variable H4 : e = 1 + d

theorem T : a = e :=
calc
a     = b      : H1
... = c + 1  : H2
... = d + 1  : {H3}
... = 1 + d  : add.comm d 1
... =  e     : eq.symm H4
