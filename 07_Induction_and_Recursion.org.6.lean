import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat

namespace nat

notation 0 := zero

-- BEGIN
definition add : nat → nat → nat
| add m 0        := m
| add m (succ n) := succ (add m n)

infix `+` := add

theorem add_zero (m : nat) : m + 0 = m := rfl
theorem add_succ (m n : nat) : m + succ n = succ (m + n) := rfl

theorem zero_add : ∀ n, 0 + n = n
| zero_add 0        := rfl
| zero_add (succ n) := eq.subst (zero_add n) rfl

definition mul : nat → nat → nat
| mul n 0        := 0
| mul n (succ m) := mul n m + m
-- END

end nat
end hide
