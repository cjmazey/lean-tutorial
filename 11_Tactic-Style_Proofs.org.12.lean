import standard
import data.nat
open nat

variables x y z w : ℕ

-- BEGIN
example (H1 : x = y) (H2 : y = z) (H3 : z = w) : x = w :=
begin
apply eq.trans,
assumption,     -- solves x = ?b with H1
apply eq.trans,
assumption,     -- solves ?b = w with H2
assumption      -- solves z = w with H3
end
-- END
