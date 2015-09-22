import standard
inductive has_add [class] (A : Type) : Type :=
mk : (A → A → A) → has_add A

definition add {A : Type} [s : has_add A] :=
has_add.rec (λ x, x) s

notation a `+` b := add a b

-- BEGIN
section
variables {A : Type} [H : has_add A] (a b : A)
include H
definition foo1 : a + b = a + b := rfl
omit H
definition foo2 : a  = a := rfl -- H is not an argument of foo2
include H
definition foo3 : a + a = a + a := rfl

check @foo1
check @foo2
check @foo3
end
-- END
