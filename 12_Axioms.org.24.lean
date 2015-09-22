import standard
import logic.eq
open classical eq.ops

section
parameter  p : Prop

definition U (x : Prop) : Prop := x = true ∨ p
definition V (x : Prop) : Prop := x = false ∨ p

noncomputable definition u := epsilon U
noncomputable definition v := epsilon V

lemma u_def : U u :=
epsilon_spec (exists.intro true (or.inl rfl))

lemma v_def : V v :=
epsilon_spec (exists.intro false (or.inl rfl))

-- BEGIN
lemma not_uv_or_p : ¬(u = v) ∨ p :=
or.elim u_def
(assume Hut : u = true,
or.elim v_def
(assume Hvf : v = false,
have Hne : ¬(u = v), from Hvf⁻¹ ▸ Hut⁻¹ ▸ true_ne_false,
or.inl Hne)
(assume Hp : p, or.inr Hp))
(assume Hp : p, or.inr Hp)
-- END

end
