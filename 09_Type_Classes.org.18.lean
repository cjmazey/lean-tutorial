import standard
import standard

inductive has_add [class] (A : Type) : Type :=
mk : (A → A → A) → has_add A

definition add {A : Type} [s : has_add A] :=
has_add.rec (λ x, x) s

notation a `+` b := add a b

-- BEGIN
definition has_add_nat [instance] : has_add nat :=
has_add.mk nat.add

definition has_add_int [instance] : has_add int :=
has_add.mk int.add

definition has_add_bool [instance] : has_add bool :=
has_add.mk bool.bor

open [coercions] nat int
open bool

set_option pp.notation false
check (2 : nat) + 2    -- nat
check (2 : int) + 2    -- int
check tt + ff          -- bool
-- END
