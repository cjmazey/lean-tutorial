/- page 86 -/

import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat

namespace nat

definition add (m n : nat) : nat :=
nat.rec_on n m (fun n add_m_n, succ add_m_n)
-- BEGIN
notation 0 := zero
infix `+` := add

theorem add_zero (m : nat) : m + 0 = m := rfl
theorem add_succ (m n : nat) : m + succ n = succ (m + n) := rfl
-- END
end nat

end hide
