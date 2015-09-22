import standard
variables (A : Type) (a b c d : A)
premises (Hab : a = b) (Hcb : c = b) (Hcd : c = d)

example : a = d :=
eq.trans (eq.trans Hab (eq.symm Hcb)) Hcd
