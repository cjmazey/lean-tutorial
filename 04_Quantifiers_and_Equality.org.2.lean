import standard
variables (A : Type) (p q : A → Prop)

-- BEGIN
example : (∀ x : A, p x ∧ q x) → ∀ y : A, p y  :=
assume H : ∀ x : A, p x ∧ q x,
take z : A,
show p z, from and.elim_left (H z)
-- END
