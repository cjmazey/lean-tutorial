/- page 30 -/

import standard
namespace hide
constant list : Type → Type

-- BEGIN
namespace list
constant cons : Π {A : Type}, A → list A → list A
constant nil : Π {A : Type}, list A
constant append : Π {A : Type}, list A → list A → list A
end list

open hide.list

variable  A : Type
variable  a : A
variables l1 l2 : list A

check cons a nil
check append (cons a nil) l1
check append (append (cons a nil) l1) l2
-- END
end hide
