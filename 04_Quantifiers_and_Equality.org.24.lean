/- page 57 -/

import standard
open classical

variables (A : Type) (p : A → Prop)

example (H : ¬ ∀ x, ¬ p x) : ∃ x, p x :=
by_contradiction
(assume H1 : ¬ ∃ x, p x,
have H2 : ∀ x, ¬ p x, from
take x,
assume H3 : p x,
have H4 : ∃ x, p x, from exists.intro x H3,
show false, from H1 H4,
show false, from H H2)
