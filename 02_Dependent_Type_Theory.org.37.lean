/- page 30 -/

import standard
namespace hide
constant list : Type → Type

namespace list
constant cons : Π A : Type, A → list A → list A
constant nil : Π A : Type, list A
constant append : Π A : Type, list A → list A → list A
end list

open hide.list

variable  A : Type
variable  a : A
variables l1 l2 : list A

-- BEGIN
check cons _ a (nil _)
check append _ (cons _ a (nil _)) l1
check append _ (append _ (cons _ a (nil _)) l1) l2
-- END
end hide
