/- page 27 -/

import standard
import data.nat
open nat

constant vec : Type → nat → Type

namespace vec
constant empty : Π A : Type, vec A 0
constant cons : Π (A : Type) (n : nat), A → vec A n → vec A (n + 1)
constant append : Π (A : Type) (n m : nat), vec A m → vec A n → vec A (n + m)
end vec
