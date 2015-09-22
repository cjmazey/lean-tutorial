import standard
variables p q : Prop
-- BEGIN
example (H : p ∧ q) : q ∧ p :=
and.intro (and.right H) (and.left H)
-- END
