/- page 106 -/

import standard
open nat option

definition f1 : nat → nat → nat
| f1 0  _  := 1
| f1 _  0  := 2
| f1 _  _  := arbitrary nat   -- the "incomplete" case

variables (a b : nat)

example : f1 0     0     = 1 := rfl
example : f1 0     (a+1) = 1 := rfl
example : f1 (a+1) 0     = 2 := rfl
example : f1 (a+1) (b+1) = arbitrary nat := rfl

definition f2 : nat → nat → option nat
| f2 0  _  := some 1
| f2 _  0  := some 2
| f2 _  _  := none            -- the "incomplete" case

example : f2 0     0     = some 1 := rfl
example : f2 0     (a+1) = some 1 := rfl
example : f2 (a+1) 0     = some 2 := rfl
example : f2 (a+1) (b+1) = none   := rfl
