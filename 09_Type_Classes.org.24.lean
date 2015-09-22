import standard
open nat

inductive foo [class] :=
mk : nat → nat → foo

definition foo.a [p : foo] : nat := foo.rec_on p (λ a b, a)

definition i1 [instance] [priority std.priority.default+10] : foo :=
foo.mk 1 1

definition i2 [instance] : foo :=
foo.mk 2 2

example : foo.a = 1 := rfl

definition i3 [instance] [priority std.priority.default+20] : foo :=
foo.mk 3 3

example : foo.a = 3 := rfl

attribute i3 [priority 500]

example : foo.a = 1 := rfl

attribute i1 [priority std.priority.default-10]

example : foo.a = 2 := rfl
