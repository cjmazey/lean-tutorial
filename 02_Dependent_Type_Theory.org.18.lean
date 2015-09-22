import standard
import data.prod
open prod

definition curry (A B C : Type) (f : A × B → C) : A → B → C := sorry

definition uncurry (A B C : Type) (f : A → B → C) : A × B → C := sorry
