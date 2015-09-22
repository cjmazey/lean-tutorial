import standard
open classical

namespace hide

-- BEGIN
theorem prop_complete (a : Prop) : a = true ∨ a = false :=
or.elim (em a)
(λ t, or.inl (propext (iff.intro (λ h, trivial) (λ h, t))))
(λ f, or.inr (propext (iff.intro (λ h, absurd h f) (λ h, false.elim h))))
-- END

end hide
