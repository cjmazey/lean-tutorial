/- page 104 -/

import standard
import data.examples.vector
open nat vector prod

-- BEGIN
definition head {A : Type} : Π {n}, vector A (succ n) → A
| head (h :: t) := h

definition tail {A : Type} : Π {n}, vector A (succ n) → vector A n
| tail (h :: t) := t

theorem eta {A : Type} : ∀ {n} (v : vector A (succ n)), head v :: tail v = v
| eta (h::t) := rfl

definition map {A B C : Type} (f : A → B → C)
: Π {n : nat}, vector A n → vector B n → vector C n
| map nil     nil     := nil
| map (a::va) (b::vb) := f a b :: map va vb

definition zip {A B : Type} : Π {n}, vector A n → vector B n → vector (A × B) n
| zip nil nil         := nil
| zip (a::va) (b::vb) := (a, b) :: zip va vb
-- END
