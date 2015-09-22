import standard
variables p q : Prop
-- BEGIN
example (Hpq : p → q) (Hnq : ¬q) : ¬p :=
assume Hp : p, Hnq (Hpq Hp)
-- END
