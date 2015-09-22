import standard
import data.nat
open nat decidable

definition ball (n : nat) (P : nat → Prop) : Prop :=
∀ x, x < n → P x

-- BEGIN
-- ∀ x : nat, x < 0 → P x
definition ball_zero (P : nat → Prop) : ball zero P :=
λ x Hlt, absurd Hlt !not_lt_zero

variables {n : nat} {P : nat → Prop}

-- (∀ x : nat, x < succ n → P x) implies (∀ x : nat, x < n → P x)
definition ball_of_ball_succ (H : ball (succ n) P) : ball n P  :=
λ x Hlt, H x (lt.step Hlt)

-- (∀ x : nat, x < n → P x) and (P n) implies (∀ x : nat, x < succ n → P x)
definition ball_succ_of_ball (H₁ : ball n P) (H₂ : P n) : ball (succ n) P :=
λ (x : nat) (Hlt : x < succ n), or.elim (eq_or_lt_of_le (le_of_lt_succ Hlt))
(λ he  : x = n, eq.rec_on (eq.rec_on he rfl) H₂)
(λ hlt : x < n, H₁ x hlt)

-- (¬ P n) implies ¬ (∀ x : nat, x < succ n → P x)
definition not_ball_of_not (H₁ : ¬ P n) : ¬ ball (succ n) P :=
λ (H : ball (succ n) P), absurd (H n (lt.base n)) H₁

-- ¬ (∀ x : nat, x < n → P x) implies ¬ (∀ x : nat, x < succ n → P x)
definition not_ball_succ_of_not_ball (H₁ : ¬ ball n P) : ¬ ball (succ n) P :=
λ (H : ball (succ n) P), absurd (ball_of_ball_succ H) H₁
-- END
