import standard
open classical decidable inhabited nonempty

namespace hide

-- BEGIN
noncomputable definition decidable_inhabited [instance] (a : Prop) : inhabited (decidable a) :=
inhabited_of_nonempty
(or.elim (em a)
(assume Ha, nonempty.intro (inl Ha))
(assume Hna, nonempty.intro (inr Hna)))

noncomputable definition prop_decidable [instance] (a : Prop) : decidable a :=
arbitrary (decidable a)
-- END

end hide
