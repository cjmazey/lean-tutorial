import standard
import data.examples.vector
open nat vector prod

definition map {A B C : Type} (f : A → B → C)
: Π {n : nat}, vector A n → vector B n → vector C n
| map nil     nil     := nil
| map (a::va) (b::vb) := f a b :: map va vb

-- BEGIN
print map
/-
definition map : Π {A : Type} {B : Type} {C : Type},
(A → B → C) → (Π {n : ℕ}, vector A n → vector B n → vector C n)
λ (A : Type) (B : Type) (C : Type) (f : A → B → C) {n : ℕ}
(a : vector A n) (a_1 : vector B n),
nat.brec_on n
(λ {n : ℕ} (b : nat.below n) (a : vector A n) (a_1 : vector B n),
nat.cases_on n
(λ (b : nat.below 0) (a : vector A 0) (a_1 : vector B 0),
(λ (t_1 : ℕ) (a_2 : vector A t_1),
vector.cases_on a_2
(λ (H_1 : 0 = 0) (H_2 : a == nil),
(λ (t_1 : ℕ) (a_1_1 : vector B t_1),
vector.cases_on a_1_1
(λ (H_1 : 0 = 0) (H_2 : a_1 == nil), nil)
(λ (n : ℕ) (a : B) (a_2 : vector B n)
(H_1 : 0 = succ n),
nat.no_confusion H_1))
0
a_1
(eq.refl 0)
-/
-- END
