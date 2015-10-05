/- page 71 -/

import standard
import data.nat
open nat

notation `[` a `**` b `]` := a * b + 1

definition mul_square (a b : ℕ) := a * a * b * b

infix `<*>`:50 := mul_square

eval [2 ** 3]
eval 2 <*> 3
