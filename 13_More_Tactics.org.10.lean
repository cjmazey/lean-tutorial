import standard
example (p q : Prop) (Hq : q) : p ∨ q :=
begin constructor; assumption end
