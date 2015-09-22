import standard
constants p q : Prop

-- BEGIN
theorem t1 (Hp : p) (Hq : q) : p := Hp

check t1 -- p → q → p
-- END
