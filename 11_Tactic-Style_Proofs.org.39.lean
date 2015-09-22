import standard
import data.nat
open nat
-- BEGIN
example (a b c : nat) : a + b + c = a + c + b :=
begin
rewrite [add.assoc, {b + _}add.comm, -add.assoc]
end
-- END
