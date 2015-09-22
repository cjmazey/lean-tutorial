import standard
open nat

check @nat.no_confusion
-- Π {P : Type} {v1 v2 : ℕ}, v1 = v2 → nat.no_confusion_type P v1 v2

check nat.no_confusion_type
-- Type → ℕ → ℕ → Type
