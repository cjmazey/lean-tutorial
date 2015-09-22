import standard
import data.nat
open nat

variables x y z w : ℕ

-- BEGIN
example (H1 : x = y) (H2 : y = z) (H3 : z = w) : x = w :=
begin
apply (eq.trans H1),
apply (eq.trans H2),
assumption   -- applied H3
end
-- END
