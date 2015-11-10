/- page 109 -/

import standard
import data.nat logic
open bool nat

definition mult : nat → nat → nat :=
have plus : nat → nat → nat
| 0        b := b
| (succ a) b := succ (plus a b),
have mult : nat → nat → nat
| 0        b := 0
| (succ a) b := plus (mult a b) b,
mult
