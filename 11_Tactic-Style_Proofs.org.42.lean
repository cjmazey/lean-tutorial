import standard
import data.nat
open nat
-- BEGIN
variables (a b : nat)

example (H₁ : a + 0 = 0) (H₂ : b + 0 = 0) : a + b + 0 = 0 :=
begin
rewrite add_zero at *,
rewrite [H₁, H₂]
end
-- END
