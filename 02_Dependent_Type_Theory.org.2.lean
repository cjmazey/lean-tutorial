import standard
import standard
open bool nat
-- BEGIN
open prod   -- makes notation for the product available

constants m n : nat

constant f : nat → nat           -- type the arrow as "\to" or "\r"
constant f' : nat -> nat         -- alternative ASCII notation
constant f'' : ℕ → ℕ             -- \nat is alternative notation for nat
constant p : nat × nat           -- type the product as "\times"
constant q : prod nat nat        -- alternative notation
constant g : nat → nat → nat
constant g' : nat → (nat → nat)  -- has the same type as g!
constant h : nat × nat → nat

constant F : (nat → nat) → nat   -- a "functional"

check f               -- ℕ → ℕ
check f n             -- ℕ
check g m n           -- ℕ
check g m             -- ℕ → ℕ
check pair m n        -- ℕ × ℕ
check pr1 p           -- ℕ
check pr2 p           -- ℕ
check pr1 (pair m n)  -- ℕ
check pair (pr1 p) n  -- ℕ × ℕ
check F f             -- ℕ
-- END

-- Write down some types, declare some constants, and check some expressions.

