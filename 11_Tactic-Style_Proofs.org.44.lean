import standard
import data.nat
open nat
-- BEGIN
variables (f : nat → nat → nat → nat) (a b : nat)

example (H₁ : a = b) (H₂ : f b a b = 0) : f a a a = 0 :=
by rewrite [H₁ at {1, 3}, H₂]
-- END
