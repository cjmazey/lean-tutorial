/- page 20 -/

import standard
import data.nat
open nat

constants (m n : nat) (p q : bool)

definition m_plus_n : nat := m + n
check m_plus_n
print m_plus_n

-- again, Lean can infer the type
definition m_plus_n' := m + n
print m_plus_n'

definition double (x : nat) : nat := x + x
print double
check double 3
eval double 3    -- 6

definition square (x : nat) := x * x
print square
check square 3
eval square 3    -- 9

definition do_twice (f : nat → nat) (x : nat) : nat := f (f x)

eval do_twice double 2    -- 8

definition quadruple := do_twice double
print quadruple
check quadruple 9
eval quadruple 9

open function
definition octuple := double ∘ do_twice double
print octuple
check octuple 9
eval octuple 9

definition Do_Twice : ((ℕ → ℕ) → (ℕ → ℕ)) → (ℕ → ℕ) → (ℕ -> ℕ) :=
   λ f, f ∘ f
/-
   Do_Twice do_twice double 2 ⟹
   (do_twice ∘ do_twice) double 2 ⟹
   do_twice (do_twice double) 2 ⟹
   do_twice (double ∘ double) 2 ⟹
   ((double ∘ double) ∘ (double ∘ double)) 2 ⟹
   double (double (double (double 2))) ⟹
   32
-/
eval Do_Twice do_twice double 2
