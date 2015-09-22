import standard
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

definition foo : a + b = a + b := rfl
check @foo
end
-- END
