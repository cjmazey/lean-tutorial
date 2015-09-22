import standard
import data.nat
open nat

structure point (A : Type) :=
(x : A) (y : A) (z : A)

structure rgb_val :=
(red : nat) (green : nat) (blue : nat)

structure red_green_point (A : Type) extends point A, rgb_val :=
(no_blue : blue = 0)

definition p : point nat := {| point, x := 10, y := 10, z := 20 |}
definition r : rgb_val := {| rgb_val, red := 200, green := 50, blue := 0 |}
definition rgp : red_green_point nat := {| red_green_point, p, r, no_blue := rfl |}

example : point.x rgp = 10 := rfl
example : rgb_val.red rgp = 200 := rfl
