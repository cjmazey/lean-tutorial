import standard
import standard

inductive has_add [class] (A : Type) : Type :=
mk : (A → A → A) → has_add A

definition add {A : Type} [s : has_add A] :=
has_add.rec (λ x, x) s

notation a `+` b := add a b

definition has_add_nat [instance] : has_add nat :=
has_add.mk nat.add

definition has_add_int [instance] : has_add int :=
has_add.mk int.add

definition has_add_bool [instance] : has_add bool :=
has_add.mk bool.bor

definition has_add_prod [instance] {A B : Type} [sA : has_add A] [sB : has_add B] :
has_add (A × B) :=
has_add.mk (take p q, (add (prod.pr1 p) (prod.pr1 q), add (prod.pr2 p) (prod.pr2 q)))

-- BEGIN
definition has_add_fun [instance] {A B : Type} [sB : has_add B] :
has_add (A → B) :=
has_add.mk (λ f g, λ x, f x + g x)

open nat

check (λ x : nat, (1 : nat)) + (λ x, (2 : nat))   -- ℕ → ℕ
eval (λ x : nat, (1 : nat)) + (λ x, (2 : nat))    -- λ (x : ℕ), 3
-- END
