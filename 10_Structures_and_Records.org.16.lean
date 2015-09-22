import standard
namespace hide
-- BEGIN
structure prod (A : Type) (B : Type) :=
pair :: (pr1 : A) (pr2 : B)

-- Rename fields pr1 and pr2 to x and y respectively.
structure point3 (A : Type) extends prod A A renaming pr1→x pr2→y :=
mk :: (z : A)

check point3.x
check point3.y
check point3.z

example : point3.mk 10 20 30 = prod.pair 10 20 :=
rfl
-- END

end hide
