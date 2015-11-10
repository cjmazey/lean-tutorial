/- page 109 -/

import standard
import data.examples.vector
open nat vector prod

-- BEGIN
variables {A B : Type}
definition unzip : Π {n : nat}, vector (A × B) n → vector A n × vector B n
| @unzip zero     nil         := (nil, nil)
| @unzip (succ n) ((a, b)::v) :=
match unzip v with
(va, vb) := (a :: va, b :: vb)
end

example : unzip ((1, 10) :: (2, 20) :: nil) = (1 :: 2 :: nil, 10 :: 20 :: nil) :=
rfl
-- END
