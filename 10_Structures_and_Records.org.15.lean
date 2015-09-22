import standard
structure point (A : Type) :=
mk :: (x : A) (y : A)

inductive color :=
red | green | blue

-- BEGIN
structure color_point (A : Type) extends private point A :=
mk :: (c : color)
-- END
