import standard
import data.nat
open nat
-- BEGIN
variables (f : nat → nat) (a : nat)

example (H : a + 0 = 0) : f a = f 0 :=
begin
rewrite [add_zero at H, H]
end
-- END
