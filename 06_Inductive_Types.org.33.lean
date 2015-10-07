/- page 88 -/

import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat

namespace nat

definition add (m n : nat) : nat :=
nat.rec_on n m (fun n add_m_n, succ add_m_n)

notation 0 := zero
infix `+` := add

theorem add_zero (m : nat) : m + 0 = m := rfl

theorem add_succ (m n : nat) : m + succ n = succ (m + n) := rfl

local abbreviation induction_on := @nat.induction_on

theorem zero_add (n : nat) : 0 + n = n :=
induction_on n
(show 0 + 0 = 0, from rfl)
(take n,
assume IH : 0 + n = n,
show 0 + succ n = succ n, from
calc
0 + succ n = succ (0 + n) : rfl
... = succ n : IH)

attribute add [reducible]
theorem add_assoc (m n k : nat) : m + n + k = m + (n + k) :=
induction_on k rfl (take k IH, eq.subst IH rfl)

theorem succ_add (m n : nat) : succ m + n = succ (m + n) :=
induction_on n
(show succ m + 0 = succ (m + 0), from rfl)
(take n,
assume IH : succ m + n = succ (m + n),
show succ m + succ n = succ (m + succ n), from
calc
succ m + succ n = succ (succ m + n) : rfl
... = succ (succ (m + n)) : IH
... = succ (m + succ n) : rfl)

theorem add_comm (m n : nat) : m + n = n + m :=
induction_on n
(show m + 0 = 0 + m, from eq.symm (zero_add m))
(take n,
assume IH : m + n = n + m,
calc
m + succ n = succ (m + n) : rfl
... = succ (n + m) : IH
... = succ n + m : succ_add)

-- BEGIN
-- define mul by recursion on the second argument
definition mul (m n : nat) : nat := /-sorry-/
  nat.rec_on n 0 (λ n mul_m_n, m + mul_m_n)
notation 1 := succ 0
notation 2 := succ 1
notation 3 := succ 2
eval mul 2 3
eval mul 3 2

infix `*` := mul

-- these should be proved by rfl
theorem mul_zero (m : nat) : m * 0 = 0 := sorry
theorem mul_succ (m n : nat) : m * (succ n) = m * n + m := sorry

theorem zero_mul (n : nat) : 0 * n = 0 := sorry

theorem mul_distrib (m n k : nat) : m * (n + k) = m * n + m * k := sorry

theorem mul_assoc (m n k : nat) : m * n * k = m * (n * k) := sorry

-- hint: you will need to prove an auxiliary statement
theorem mul_comm (m n : nat) : m * n = n * m := sorry

definition pred (n : nat) : nat := nat.cases_on n zero (fun n, n)

theorem pred_succ (n : nat) : pred (succ n) = n := sorry

theorem succ_pred (n : nat) : n ≠ 0 → succ (pred n) = n := sorry
-- END
end nat

end hide
