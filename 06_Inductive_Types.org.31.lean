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
induction_on k rfl (fun k IH, eq.subst IH rfl)

-- BEGIN
theorem add_comm (m n : nat) : m + n = n + m :=
induction_on n
(show m + 0 = 0 + m, from eq.symm (zero_add m))
(take n,
assume IH : m + n = n + m,
calc
m + succ n = succ (m + n) : rfl
... = succ (n + m) : IH
... = succ n + m : sorry)
-- END
end nat

end hide
