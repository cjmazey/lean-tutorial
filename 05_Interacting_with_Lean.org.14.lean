/- page 72 -/

import standard
import data.nat
open nat

notation [parsing-only] `[` a `**` b `]` := a * b + 1

variables a b : ℕ
check [a ** b]
