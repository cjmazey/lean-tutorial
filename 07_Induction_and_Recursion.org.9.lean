/- page 103 -/

import standard
import data.list
open list

definition append {A : Type} : list A → list A → list A
| append nil    l := l
| append (h::t) l := h :: append t l

example : append [1, 2, 3] [4, 5] = [1, 2, 3, 4, 5] := rfl
