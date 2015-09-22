import standard
open nat
-- BEGIN
variable C : Type
variables a b : nat

eval nat.no_confusion_type C zero     (succ a)
-- C
eval nat.no_confusion_type C (succ a) zero
-- C
eval nat.no_confusion_type C zero     zero
-- C → C
eval nat.no_confusion_type C (succ a) (succ b)
-- (a = b → C) → C
-- END
