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
definition mul (m n : nat) : nat :=
  nat.rec_on n 0 (λ n mul_m_n, m + mul_m_n)
notation 1 := succ 0
notation 2 := succ 1
notation 3 := succ 2
eval mul 2 3
eval mul 3 2

infix `*` := mul

-- these should be proved by rfl
theorem mul_zero (m : nat) : m * 0 = 0 :=
  rfl

theorem mul_succ (m n : nat) : m * (succ n) = m * n + m :=
  eq.subst (add_comm m (m * n)) rfl

theorem zero_mul (n : nat) : 0 * n = 0 :=
  induction_on n
               rfl
               (λ n IH,
                  (calc 0 * succ n = 0 + 0 * n : rfl
                               ... = 0 + 0 : IH
                               ... = 0 : rfl))

theorem mul_distrib (m n k : nat) : m * (n + k) = m * n + m * k :=
  induction_on n
               (calc m * (0 + k) = m * k : zero_add
                             ... = 0 + m * k : zero_add
                             ... = m * 0 + m * k : rfl)
               (λ n IH,
                  calc m * (succ n + k) = m * succ (n + k) : succ_add
                                    ... = m + (m * (n + k)) : rfl
                                    ... = m + (m * n + m * k) : IH
                                    ... = m + (m * n) + m * k : add_assoc
                                    ... = m * (succ n) + m * k : rfl)

theorem mul_assoc (m n k : nat) : m * n * k = m * (n * k) :=
  induction_on k
               rfl
               (λ k IH,
                  calc m * n * (succ k) = m * n + m * n * k : rfl
                                    ... = m * n + m * (n * k) : IH
                                    ... = m * (n + n * k) : mul_distrib
                                    ... = m * (n * succ k) : rfl)

-- hint: you will need to prove an auxiliary statement
lemma succ_mul (m n : nat) : succ m * n = n + m * n :=
  induction_on n
               rfl
               (λ n IH,
                  calc succ m * succ n = succ m + succ m * n : rfl
                                   ... = succ m + (n + m * n) : IH
                                   ... = (succ m + n) + m * n : add_assoc
                                   ... = succ (m + n) + m * n : succ_add
                                   ... = m + succ n + m * n : rfl
                                   ... = succ n + m + m * n : add_comm
                                   ... = succ n + (m + m * n) : add_assoc
                                   ... = succ n + m * succ n : rfl)

theorem mul_comm (m n : nat) : m * n = n * m :=
  induction_on n
               (eq.subst !zero_mul rfl)
               (λ n IH,
                    calc m * succ n = m + m * n : rfl
                                ... = m + n * m : IH
                                ... = succ n * m : succ_mul)

definition pred (n : nat) : nat := nat.cases_on n zero (fun n, n)

theorem pred_succ (n : nat) : pred (succ n) = n :=
  rfl

theorem succ_pred (n : nat) : n ≠ 0 → succ (pred n) = n :=
  nat.cases_on n
               (λ H, absurd rfl H)
               (λ n' H, rfl)

-- END
end nat

end hide
