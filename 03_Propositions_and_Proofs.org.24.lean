import standard
variables p q : Prop
-- BEGIN
example (Hpq : p → q) (Hnq : ¬q) : ¬p :=
not.intro
(assume Hp : p,
show false, from not.elim Hnq (Hpq Hp))
-- END
