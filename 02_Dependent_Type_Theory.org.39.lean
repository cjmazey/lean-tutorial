import standard
definition id {A : Type} (x : A) := x

check id      -- ?A → ?A

variables A B : Type
variables (a : A) (b : B)

check id      -- ?A A B a b → ?A A B a b
check id a    -- A
check id b    -- B
