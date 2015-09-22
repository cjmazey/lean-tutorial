import standard
definition id {A : Type} (x : A) := x

-- BEGIN
variables A B : Type
variables (a : A) (b : B)

set_option pp.metavar_args false
check id      -- ?A → ?A
-- END
