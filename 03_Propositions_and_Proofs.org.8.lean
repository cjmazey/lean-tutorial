import standard
constants p q : Prop

-- BEGIN
theorem t1 : p → q → p :=
assume Hp : p,
assume Hq : q,
show p, from Hp
-- END
