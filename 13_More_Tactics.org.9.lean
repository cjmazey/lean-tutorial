import standard
variables p q : Prop

example (Hp : p) (Hnp : ¬ p) : q :=
by contradiction
