import standard
open num structure point (A : Type) :=
mk :: (x : A) (y : A)

inductive color :=
red | green | blue

structure color_point (A : Type) extends point A :=
mk :: (c : color)
-- BEGIN
definition x_plus_y (p : point num) :=
point.x p + point.y p

definition green_point : color_point num :=
{| color_point, x := 10, y := 20, c := color.green |}

eval x_plus_y green_point    -- 30

-- display implicit coercions
set_option pp.coercions true

check x_plus_y green_point    -- num

example : green_point = point.mk 10 20 :=
rfl

check color_point.to_point    -- color_point ?A → point ?A
-- END
