import standard
variables p q : Prop
-- BEGIN

example (Hp : p) (Hq : q) : p ∧ q := and.intro Hp Hq

check assume (Hp : p) (Hq : q), and.intro Hp Hq
-- END
