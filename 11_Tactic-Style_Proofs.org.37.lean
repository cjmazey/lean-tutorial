import standard
open nat
variables (f : nat → nat) (a b : nat)

example (H₁ : a = b) (H₂ : f a = 0) : f b = 0 :=
begin
rewrite [-H₁, H₂]
end
