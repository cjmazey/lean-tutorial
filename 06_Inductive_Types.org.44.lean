/- page 92 -/

import standard
namespace hide

inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a

-- BEGIN
theorem subst {A : Type} {a b : A} {P : A → Prop}
(H₁ : eq a b) (H₂ : P a) : P b :=
eq.rec H₂ H₁
-- END

end hide
