import standard
import data.examples.vector
open nat

variables {A : Type} {n : nat}
example (H : n = 0) (v : vector A n) : vector A 0 :=
begin
rewrite H at v,
exact v
end
