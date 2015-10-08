/- page 91 -/

import standard
open nat
namespace hide

-- BEGIN
inductive vector (A : Type) : nat → Type :=
| nil {} : vector A zero
| cons   : Π {n}, A → vector A n → vector A (succ n)
-- END

end hide
