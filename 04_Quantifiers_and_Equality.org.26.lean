import standard
open classical

variables (A : Type) (p q : A → Prop)
variable r : Prop

-- BEGIN
example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) :=
iff.intro
(assume H : ∃ x, p x ∨ q x,
obtain a (H1 : p a ∨ q a), from H,
or.elim H1
(assume Hpa : p a, or.inl (exists.intro a Hpa))
(assume Hqa : q a, or.inr (exists.intro a Hqa)))
(assume H : (∃ x, p x) ∨ (∃ x, q x),
or.elim H
(assume Hp : ∃ x, p x,
obtain a Hpa, from Hp,
exists.intro a (or.inl Hpa))
(assume Hq : ∃ x, q x,
obtain a Hqa, from Hq,
exists.intro a (or.inr Hqa)))

example (a : A) : (∃ x, p x → r) ↔ (∀ x, p x) → r :=
iff.intro
(assume H1 : ∃ x, p x → r,
assume H2 : ∀ x, p x,
obtain a (Ha : p a → r), from H1,
show r, from  Ha (H2 a))
(assume H1 : (∀ x, p x) → r,
show ∃ x, p x → r, from
by_cases
(assume Hap : ∀ x, p x, exists.intro a (λ H', H1 Hap))
(assume Hnap : ¬ ∀ x, p x,
by_contradiction
(assume Hnex : ¬ ∃ x, p x → r,
have Hap : ∀ x, p x, from
take x,
by_contradiction
(assume Hnp : ¬ p x,
have Hex : ∃ x, p x → r,
from exists.intro x (assume Hp, absurd Hp Hnp),
show false, from Hnex Hex),
show false, from Hnap Hap)))
-- END
