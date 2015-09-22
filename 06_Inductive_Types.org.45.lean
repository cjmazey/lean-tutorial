import standard
namespace hide

inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a

theorem subst {A : Type} {a b : A} {P : A → Prop}
(H₁ : eq a b) (H₂ : P a) : P b :=
eq.rec H₂ H₁

-- BEGIN
theorem symm {A : Type} {a b : A} (H : eq a b) : eq b a :=
subst H (eq.refl a)

theorem trans {A : Type} {a b c : A} (H₁ : eq a b) (H₂ : eq b c) : eq a c :=
sorry

theorem congr {A B : Type} {a b : A} (f : A → B) (H : eq a b) : eq (f a) (f b) :=
sorry
-- END

end hide
