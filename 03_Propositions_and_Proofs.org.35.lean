import standard
open classical

variable p : Prop
-- BEGIN
example (H : ¬¬p) : p :=
by_contradiction
(assume H1 : ¬p,
show false, from H H1)
-- END
