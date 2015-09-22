import standard
open classical

variable p : Prop
-- BEGIN
example (H : ¬¬p) : p :=
by_cases
(assume H1 : p, H1)
(assume H1 : ¬p, absurd H1 H)
-- END
