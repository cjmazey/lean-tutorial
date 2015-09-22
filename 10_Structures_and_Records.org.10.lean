import standard
structure my_struct :=
mk :: (A : Type) (B : Type) (a : A) (b : B)

check {| my_struct, a := 10, b := true |}
