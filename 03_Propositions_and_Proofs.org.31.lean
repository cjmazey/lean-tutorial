import standard
-- BEGIN
section
variables p q : Prop

example (H : p ∧ q) : q ∧ p :=
have Hp : p, from and.left H,
have Hq : q, from and.right H,
show q ∧ p, from and.intro Hq Hp
end
-- END
