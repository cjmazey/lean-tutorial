import standard
structure point (A : Type) :=
mk :: (x : A) (y : A)

inductive color :=
red | green | blue

structure color_point (A : Type) extends point A :=
mk :: (c : color)
