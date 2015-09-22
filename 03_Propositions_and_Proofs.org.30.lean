import standard
variables p q : Prop

theorem and_swap : p ∧ q ↔ q ∧ p :=
iff.intro
(assume H : p ∧ q,
show q ∧ p, from and.intro (and.right H) (and.left H))
(assume H : q ∧ p,
show p ∧ q, from and.intro (and.right H) (and.left H))

-- BEGIN
premise H : p ∧ q
example : q ∧ p := iff.mp (and_swap p q) H
-- END
