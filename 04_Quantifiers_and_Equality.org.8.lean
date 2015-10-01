/- page 50 -/

import standard
variables (men : Type) (barber : men) (shaves : men → men → Prop)

example (H : ∀ x : men, shaves barber x ↔ ¬shaves x x) : false :=
  have Hnsbb : ¬shaves barber barber,
    from assume Hsbb : shaves barber barber,
           iff.mp (H barber) Hsbb Hsbb,
  have Hsbb : shaves barber barber,
    from iff.mpr (H barber) Hnsbb,
  absurd Hsbb Hnsbb
