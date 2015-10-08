/- page 89 -/

import standard
namespace hide

-- BEGIN
inductive list (A : Type) : Type :=
| nil {} : list A
| cons : A → list A → list A

namespace list

notation `[` l:(foldr `,` (h t, cons h t) nil) `]` := l

section
open nat
check [1, 2, 3, 4, 5]
check ([1, 2, 3, 4, 5] : list ℕ)
end

end list
-- END

end hide
