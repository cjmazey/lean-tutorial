/- page 21 -/

import standard
import data.nat
open nat

definition foo := let a := nat in λ x : a, x + 2

/-
definition bar := (λ a, λ x : a, x + 2) nat
-/

/-
  (λ a, λ x : a, x + 2) bool does not make sense, for example.
-/
