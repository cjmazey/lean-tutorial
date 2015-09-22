import standard
variables (A : Type) (B : A → Type)
variables (a1 a2 : A) (b1 : B a1) (b2 : B a2)
variable  (C : Type)

-- Remark: b1 and b2 have different types

eval sigma.no_confusion_type C (sigma.mk a1 b1) (sigma.mk a2 b2)
-- (a1 = a2 → b1 == b2 → C) → C
