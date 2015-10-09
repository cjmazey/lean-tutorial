/- page 93 -/

import standard
namespace hide

inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a

inductive heq {A : Type} (a : A) : Π {B : Type}, B → Prop :=
refl : heq a a

-- BEGIN
theorem hcongr {A : Type} {B : A → Type} {a b : A} (f : Π x : A, B x)
(H : eq a b) : heq (f a) (f b) :=
eq.rec_on H (heq.refl (f a))
-- END

end hide
