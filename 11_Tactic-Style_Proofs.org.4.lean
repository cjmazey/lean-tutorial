import standard
-- BEGIN
theorem test (p q : Prop) (Hp : p) (Hq : q) : p ∧ q ∧ p :=
begin
apply (and.intro Hp),
exact (and.intro Hq Hp)
end
-- END
