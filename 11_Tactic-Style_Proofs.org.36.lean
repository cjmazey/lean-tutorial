import standard
open nat
variables (f : nat → nat) (k : nat)

example (H₁ : f 0 = 0) (H₂ : k = 0) : f k = 0 :=
begin
rewrite [H₂, H₁]
end
