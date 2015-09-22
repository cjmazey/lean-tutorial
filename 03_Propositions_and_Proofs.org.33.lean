import standard
open classical

-- BEGIN
theorem dne {p : Prop} (H : ¬¬p) : p :=
or.elim (em p)
(assume Hp : p, Hp)
(assume Hnp : ¬p, absurd Hnp H)
-- END
