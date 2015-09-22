import standard
structure point (A : Type) :=
mk :: (x : A) (y : A)

-- BEGIN
eval point.x (point.mk 10 20)
eval point.y (point.mk 10 20)

open point

example (A : Type) (a b : A) : x (mk a b) = a :=
rfl

example (A : Type) (a b : A) : y (mk a b) = b :=
rfl
-- END
