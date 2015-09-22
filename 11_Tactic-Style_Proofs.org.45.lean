import standard
import data.nat
open nat

variables (f : nat → nat → nat → nat) (a b : nat)
-- BEGIN
example (H₁ : a = b) (H₂ : f b a b = 0) : f a a a = 0 :=
by rewrite [H₁ at -{2}, H₂]
-- END
