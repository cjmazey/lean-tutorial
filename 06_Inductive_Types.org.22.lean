/- page 84 -/

import standard
namespace hide

-- BEGIN
inductive false : Prop

inductive true : Prop :=
intro : true

inductive and (a b : Prop) : Prop :=
intro : a → b → and a b

inductive or (a b : Prop) : Prop :=
| intro_left  : a → or a b
| intro_right : b → or a b
-- END

end hide
