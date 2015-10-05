/- page 73 -/

import standard
import data.nat data.int
open nat int

variables a b : int
variables m n : nat

-- BEGIN
check 123            -- 123 : num
check (123 : nat)    -- 123 : ℕ
check (123 : int)    -- 123 : ℤ
check a + n          -- a + n : ℤ
check n + a          -- n + a : ℤ
check a + 123        -- a + 123 : ℤ

set_option pp.coercions true

check 123            -- 123 : num
check (123 : nat)    -- of_num 123 : ℕ
check (123 : int)    -- of_nat (of_num 123) : ℤ
check a + n          -- a + of_nat n : ℤ
check n + a          -- of_nat n + a : ℤ
check a + 123        -- a + of_nat (of_num 123) : ℤ
-- END
