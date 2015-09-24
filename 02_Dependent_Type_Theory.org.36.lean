/- page 29 -/

import standard
namespace hide
constant list : Type → Type

namespace list
constant cons : Π A : Type, A → list A → list A
constant nil : Π A : Type, list A
constant append : Π A : Type, list A → list A → list A
end list

-- BEGIN
open hide.list

variable  A : Type
variable  a : A
variables l1 l2 : list A

check cons A a (nil A)
check append A (cons A a (nil A)) l1
check append A (append A (cons A a (nil A)) l1) l2
-- END
end hide
