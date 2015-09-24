/- page 20 -/

import standard
import data.prod
open prod

definition curry (A B C : Type) (f : A × B → C) : A → B → C :=
   λ a b, f (a, b)

definition uncurry (A B C : Type) (f : A → B → C) : A × B → C :=
   λ p, f (pr₁ p) (pr₂ p)
