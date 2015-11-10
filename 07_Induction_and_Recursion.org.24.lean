/- page 109 -/

import standard
import data.examples.vector
open nat vector

-- BEGIN
variables {A B : Type}

definition tail : Π {n}, vector A (succ n) → vector A n
| tail (h :: t) := t

definition map (f : A → B)
: Π {n : nat}, vector A n → vector B n
| map nil     := nil
| map (a::va) := f a :: map va

definition diag : Π {n : nat}, vector (vector A n) n → vector A n
| diag nil              := nil
| diag ((a :: va) :: v) := a :: diag (map tail v)
-- END
