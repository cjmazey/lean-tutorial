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

lemma not_uv_or_p : ¬(u = v) ∨ p :=
or.elim u_def
(assume Hut : u = true,
or.elim v_def
(assume Hvf : v = false,
have Hne : ¬(u = v), from Hvf⁻¹ ▸ Hut⁻¹ ▸ true_ne_false,
or.inl Hne)
(assume Hp : p, or.inr Hp))
(assume Hp : p, or.inr Hp)

lemma p_implies_uv : p → u = v :=
assume Hp : p,
have Hpred : U = V, from
funext (take x : Prop,
have Hl : (x = true ∨ p) → (x = false ∨ p), from
assume A, or.inr Hp,
have Hr : (x = false ∨ p) → (x = true ∨ p), from
assume A, or.inr Hp,
show (x = true ∨ p) = (x = false ∨ p), from
propext (iff.intro Hl Hr)),
have H' : epsilon U = epsilon V, from Hpred ▸ rfl,
show u = v, from H'

-- BEGIN
theorem EM : p ∨ ¬p :=
have H : ¬(u = v) → ¬p, from mt p_implies_uv,
or.elim not_uv_or_p
(assume Hne : ¬(u = v), or.inr (H Hne))
(assume Hp : p, or.inl Hp)
-- END

end
