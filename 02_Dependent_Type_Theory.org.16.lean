import standard
constants A B C : Type
constants (g : B → C) (f : A → B)

-- BEGIN
definition g_comp_f (x : A) : C := g (f x)
print g_comp_f
-- END
