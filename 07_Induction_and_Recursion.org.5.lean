/- page 101 -/

import standard
import data.list
open list

definition tail {A : Type} : list A → list A
| tail nil      := nil
| tail (h :: t) := t

-- Parameter A may occur after ':'
definition tail2 : Π {A : Type}, list A → list A
| tail2 (@nil A) := (@nil A)
| tail2 (h :: t) := t

-- @ is allowed on the left-hand-side
definition tail3 : Π {A : Type}, list A → list A
| @tail3 A nil      := nil
| @tail3 A (h :: t) := t

-- A is explicit parameter
definition tail4 : Π (A : Type), list A → list A
| tail4 A nil      := nil
| tail4 A (h :: t) := t
