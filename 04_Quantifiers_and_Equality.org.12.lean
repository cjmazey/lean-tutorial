import standard
variables (A : Type) (a b c d : A)
premises (Hab : a = b) (Hcb : c = b) (Hcd : c = d)

-- BEGIN
open eq.ops

example : a = d := Hab ⬝ Hcb⁻¹ ⬝ Hcd
