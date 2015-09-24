/- page 25 -/

import standard
namespace foo
constant A : Type
constant a : A
constant f : A → A

definition fa : A := f a
end foo

check foo.A
check foo.f

namespace foo
definition ffa : A := f (f a)
end foo
