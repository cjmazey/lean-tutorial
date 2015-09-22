import standard
import logic.eq
open classical eq.ops

section
parameter  p : Prop

definition U (x : Prop) : Prop := x = true ∨ p
definition V (x : Prop) : Prop := x = false ∨ p

-- BEGIN
noncomputable definition u := epsilon U
noncomputable definition v := epsilon V

lemma u_def : U u :=
epsilon_spec (exists.intro true (or.inl rfl))

lemma v_def : V v :=
epsilon_spec (exists.intro false (or.inl rfl))
-- END

end
