import standard
variables p q : Prop
-- BEGIN
example (Hp : p) (Hnp : ¬p) : q := absurd Hp Hnp
-- END
