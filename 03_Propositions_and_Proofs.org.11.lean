import standard
constants p q : Prop

theorem t1 (Hp : p) (Hq : q) : p := Hp

-- BEGIN
axiom Hp : p

theorem t2 : q → p := t1 Hp
-- END
