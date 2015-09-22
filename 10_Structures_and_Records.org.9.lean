import standard
open nat

structure point (A : Type) :=
mk :: (x : A) (y : A)
-- BEGIN
check ⦃ point nat, x := 10, y := 20 ⦄
-- END
