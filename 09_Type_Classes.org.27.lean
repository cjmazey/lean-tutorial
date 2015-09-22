import standard
import data.nat
open nat decidable

definition ball (n : nat) (P : nat → Prop) : Prop :=
∀ x, x < n → P x
