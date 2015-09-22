import standard
constants p q : Prop

theorem t1 : p → q → p := λ Hp : p, λ Hq : q, Hp
