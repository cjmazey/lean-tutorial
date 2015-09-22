import standard
namespace foo
constant A : Type
constant a : A
constant f : A → A

definition fa : A := f a
definition ffa : A := f (f a)

print "inside foo"

check A
check a
check f
check fa
check ffa
check foo.A
check foo.fa
end foo

print "outside the namespace"

-- check A  -- error
-- check fa -- error
check foo.A
check foo.a
check foo.f
check foo.fa
check foo.ffa

open foo

print "opened foo"

check A
check a
check fa
check foo.fa
