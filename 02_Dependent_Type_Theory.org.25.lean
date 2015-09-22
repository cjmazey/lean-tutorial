import standard
section useful
variables (A B C : Type)
variables (g : B → C) (f : A → B) (h : A → A)
variable x : A

definition compose := g (f x)
definition do_twice := h (h x)
definition do_thrice := h (h (h x))
end useful
