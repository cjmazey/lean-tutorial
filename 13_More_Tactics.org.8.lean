import standard
variables (A : Type) (a b c d : A)

example (H₁ : a = b) (H₂ : c = b) (H₃ : c = d) : a = d :=
by transitivity b; assumption; transitivity c; symmetry; assumption; assumption
