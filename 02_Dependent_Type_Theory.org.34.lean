/- page 28 -/

import standard
import data.sigma data.prod

variable A : Type
variable B : A → Type
variable a : A
variable b : B a
variables C D : Type
variables (c : C) (d : D)

open sigma.ops
open prod.ops

eval (a, b).1
eval (a, b).2
eval ⟨c, d⟩.1
eval ⟨c, d⟩.2
