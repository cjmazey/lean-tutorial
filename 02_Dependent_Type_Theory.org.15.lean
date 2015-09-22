import standard
constants A B C : Type
constants (a : A) (f : A → B) (g : B → C) (h : A → A)

definition gfa : C := g (f a)

check gfa    -- C
print gfa    -- g (f a)

-- We can omit the type when Lean can figure it out.
definition gfa' := g (f a)
print gfa'

definition gfha := g (f (h a))
print gfha

definition g_comp_f : A → C := λ x, g (f x)
print g_comp_f
