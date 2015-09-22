import standard
namespace hide

-- BEGIN
inductive fin : nat → Type :=
| fz : Π n, fin (nat.succ n)
| fs : Π {n}, fin n → fin (nat.succ n)
-- END

end hide
