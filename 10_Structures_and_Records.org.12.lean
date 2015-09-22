import standard
open nat

structure point (A : Type) :=
mk :: (x : A) (y : A)

definition p1 : point nat := {| point, x := 10, y := 20 |}
definition p2 : point nat := {| point, x := 1, p1 |}
definition p3 : point nat := {| point, y := 1, p1 |}

example : point.y p1 = point.y p2 :=
rfl

example : point.x p1 = point.x p3 :=
rfl
