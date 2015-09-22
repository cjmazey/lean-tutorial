import standard
open classical

variables p q : Prop
-- BEGIN
example (H : ¬ (p ∧ q)) : ¬ p ∨ ¬ q :=
or.elim (em p)
(assume Hp : p,
or.inr
(show ¬q, from
assume Hq : q,
H (and.intro Hp Hq)))
(assume Hp : ¬p,
or.inl Hp)
-- END
