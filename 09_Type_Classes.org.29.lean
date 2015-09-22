import standard
import data.nat
open nat decidable

definition ball (n : nat) (P : nat → Prop) : Prop :=
∀ x, x < n → P x
definition ball_zero (P : nat → Prop) : ball zero P :=
λ x Hlt, absurd Hlt !not_lt_zero

variables {n : nat} {P : nat → Prop}

definition ball_of_ball_succ (H : ball (succ n) P) : ball n P  :=
λ x Hlt, H x (lt.step Hlt)

definition ball_succ_of_ball (H₁ : ball n P) (H₂ : P n) : ball (succ n) P :=
λ (x : nat) (Hlt : x < succ n), or.elim (eq_or_lt_of_le (le_of_lt_succ Hlt))
(λ he  : x = n, eq.rec_on (eq.rec_on he rfl) H₂)
(λ hlt : x < n, H₁ x hlt)

definition not_ball_of_not (H₁ : ¬ P n) : ¬ ball (succ n) P :=
λ (H : ball (succ n) P), absurd (H n (lt.base n)) H₁

definition not_ball_succ_of_not_ball (H₁ : ¬ ball n P) : ¬ ball (succ n) P :=
λ (H : ball (succ n) P), absurd (ball_of_ball_succ H) H₁

-- BEGIN
definition dec_ball [instance] (H : decidable_pred P) : Π (n : nat), decidable (ball n P)
| dec_ball 0     := inl (ball_zero P)
| dec_ball (a+1) :=
match dec_ball a with
| inl iH  :=
match H a with
| inl Pa  := inl (ball_succ_of_ball iH Pa)
| inr nPa := inr (not_ball_of_not nPa)
end
| inr niH := inr (not_ball_succ_of_not_ball niH)
end
-- END
