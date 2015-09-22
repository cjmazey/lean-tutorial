import standard
import data.examples.vector
open vector nat

-- BEGIN
variables (P : Π (n m : ℕ) (v : vector bool n) (w : vector bool m), Type)
(p : Π (n m : ℕ) (v : vector bool n) (w : vector bool m), P n m v w)
(n m : ℕ) (v : vector bool n) (w : vector bool m)

set_option pp.metavar_args false
eval (!p : P n m v w)    -- p n m v w
eval (!p : P n n v v)    -- p n n v v
check !p                 -- p ?n ?m ?v ?w : P ?n ?m ?v ?w

eval (!P v w : Type)     -- P n m v w
eval (!p : !P w v)       -- p m n w v
-- END
