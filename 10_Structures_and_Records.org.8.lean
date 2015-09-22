import standard
structure point (A : Type) :=
mk :: (x : A) (y : A)

check {| point, x := 10, y := 20 |}   -- point num
check {| point, y := 20, x := 10 |}
check ⦃ point, x := 10, y := 20 ⦄

example : {| point, x := 10, y := 20 |} = {| point, y := 20, x := 10 |} :=
rfl
