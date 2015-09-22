import standard
theorem test (p q : Prop) (Hp : p) (Hq : q) : p ∧ q ∧ p :=
begin
apply and.intro,
exact Hp,
apply and.intro,
exact Hq,
exact Hp
end

-- BEGIN
reveal test
print test
-- END
