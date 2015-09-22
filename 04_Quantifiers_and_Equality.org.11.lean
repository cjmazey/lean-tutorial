import standard
variables (A : Type) (a b c d : A)
premises (Hab : a = b) (Hcb : c = b) (Hcd : c = d)

-- BEGIN
open eq

example : a = d := trans (trans Hab (symm Hcb)) Hcd
-- END
