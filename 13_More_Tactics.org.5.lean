import standard

variables p q : Prop

example (Hp : p) (Hq : q) : p ∧ q :=
by split; exact Hp; exact Hq

example (Hp : p) (Hq : q) : p ∧ q :=
by split; repeat assumption

example (Hp : p) : p ∨ q :=
by constructor; assumption

example (Hq : q) : p ∨ q :=
by constructor; assumption

example (Hp : p) : p ∨ q :=
by constructor 1; assumption

example (Hq : q) : p ∨ q :=
by constructor 2; assumption

example (Hp : p) : p ∨ q :=
by left; assumption

example (Hq : q) : p ∨ q :=
by right; assumption
