/- page 43 -/

import standard
open classical

-- BEGIN
theorem dne {p : Prop} (H : ¬¬p) : p :=
or.elim (em p)
(assume Hp : p, Hp)
(assume Hnp : ¬p, absurd Hnp H)
-- END

section exercise
  premise Hdne {p : Prop} : ¬¬p → p

  /- excluded middle is irrefutable (constructive result) -/
  lemma nnem {p : Prop} : ¬¬(p ∨ ¬p) :=
    assume Hnem : ¬(p ∨ ¬p),
    have Hnp : ¬p, from (λ Hp : p, Hnem (or.inl Hp)),
    show false, from Hnem (or.inr Hnp)

  theorem dne_em {p : Prop} : p ∨ ¬p := Hdne nnem
end exercise

check nnem
check dne_em
