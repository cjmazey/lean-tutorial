import standard
theorem test (p q : Prop) (Hp : p) (Hq : q) : p ∧ q ∧ p :=
by apply (and.intro Hp); exact (and.intro Hq Hp)
