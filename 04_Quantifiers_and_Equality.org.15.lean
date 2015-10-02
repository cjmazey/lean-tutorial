/- page 52 -/

import standard
open eq.ops
-- BEGIN
example (A : Type) (a b : A) (P : A → Prop) (H1 : a = b) (H2 : P a) : P b :=
eq.subst H1 H2

example (A : Type) (a b : A) (P : A → Prop) (H1 : a = b) (H2 : P a) : P b :=
H1 ▸ H2
-- END
