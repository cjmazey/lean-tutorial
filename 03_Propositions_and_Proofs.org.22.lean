import standard
variables p q r: Prop
-- BEGIN
example (H : p ∨ q) : q ∨ p :=
or.elim H
(assume Hp : p,
show q ∨ p, from or.intro_right q Hp)
(assume Hq : q,
show q ∨ p, from or.intro_left p Hq)
-- END
