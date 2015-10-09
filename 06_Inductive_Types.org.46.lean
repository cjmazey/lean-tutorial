/- page 93 -/

import standard
namespace hide

inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a

-- BEGIN
theorem hcongr {A : Type} {B : A → Type} {a b : A} (f : Π x : A, B x)
(H : eq a b) : eq (eq.rec_on H (f a)) (f b) :=
have h₁ : ∀ h : eq a a, eq (eq.rec_on h (f a)) (f a), from
assume h : eq a a, eq.refl (eq.rec_on h (f a)),
have h₂ : ∀ h : eq a b, eq (eq.rec_on h (f a)) (f b), from
eq.rec_on H h₁,
show eq (eq.rec_on H (f a)) (f b), from
h₂ H
-- END

end hide
