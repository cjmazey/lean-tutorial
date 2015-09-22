import standard
import data.nat
open nat

inductive cbtree :=
| leaf : cbtree
| sup : (ℕ → cbtree) → cbtree

namespace cbtree

definition succ (t : cbtree) : cbtree :=
sup (λ n, t)

definition omega : cbtree :=
sup (nat.rec leaf (λ n t, succ t))

end cbtree
