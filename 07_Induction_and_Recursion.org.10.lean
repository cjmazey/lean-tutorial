/- page 103 -/

import standard
namespace hide
-- BEGIN
open nat

inductive vector (A : Type) : nat → Type :=
| nil {} : vector A zero
| cons   : Π {n}, A → vector A n → vector A (succ n)

open vector
notation h :: t := cons h t

check @vector.cases_on
-- Π {A : Type}
--   {C : Π (a : ℕ), vector A a → Type}
--   {a : ℕ}
--   (n : vector A a),
--   (e1 : C 0 nil)
--   (e2 : Π {n : ℕ} (a : A) (a_1 : vector A n), C (succ n) (cons a a_1)),
--   C a n
-- END

end hide
