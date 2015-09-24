/- page 29 -/

import standard
-- BEGIN
namespace hide
constant list : Type → Type

namespace list
constant cons : Π A : Type, A → list A → list A
constant nil : Π A : Type, list A
constant append : Π A : Type, list A → list A → list A
end list
end hide
-- END
