import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat

namespace nat

notation 0 := zero

-- BEGIN
definition add (m : nat) : nat → nat
| add 0        := m
| add (succ n) := succ (add n)
-- END

end nat
end hide
