import standard
namespace hide

inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a

-- BEGIN
theorem cast {A B : Type} (p : eq A B) (a : A) : B :=
eq.rec_on p a
-- END

end hide
