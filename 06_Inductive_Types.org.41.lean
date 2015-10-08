/- page 91 -/

import standard
namespace hide

-- BEGIN
inductive fin : nat → Type :=
| fz : Π n, fin (nat.succ n)
| fs : Π {n}, fin n → fin (nat.succ n)
-- END

open nat
check fin.fz 0
check fin.fz 42
check fin.fs (fin.fz 3)
/- Every n is in types >= n, and only those types -/

end hide
