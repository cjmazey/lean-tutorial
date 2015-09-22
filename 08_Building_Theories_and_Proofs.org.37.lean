import standard
namespace foo
protected definition bar (A : Type) (x : A) := x
end foo

open foo
check foo.bar  -- "check bar" yields an error
