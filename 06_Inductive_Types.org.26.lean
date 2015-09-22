import standard
namespace hide

inductive nat : Type :=
| zero : nat
| succ : nat → nat
-- BEGIN
check @nat.rec_on
-- END

end hide
