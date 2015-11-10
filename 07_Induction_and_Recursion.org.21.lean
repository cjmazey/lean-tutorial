/- page 108 -/

import standard
import data.list
open nat bool list

-- BEGIN
definition is_not_zero (a : nat) : bool :=
match a with
| zero   := ff
| succ _ := tt
end

-- We can use recursive equations and match
variable {A : Type}
variable p : A → bool

definition filter : list A → list A
| filter nil      := nil
| filter (a :: l) :=
match p a with
|  tt := a :: filter l
|  ff := filter l
end

example : filter is_not_zero [1, 0, 0, 3, 0] = [1, 3] := rfl
-- END
