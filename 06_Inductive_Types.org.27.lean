/- page 86 -/

import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat
-- BEGIN
namespace nat

definition add (m n : nat) : nat :=
nat.rec_on n m (λ n add_m_n, succ add_m_n)

-- try it out
eval add (succ zero) (succ (succ zero))

end nat
-- END

end hide
