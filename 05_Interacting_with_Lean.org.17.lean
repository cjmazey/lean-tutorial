import standard
definition my_long_identity_function {A : Type} (x : A) : A := x
local abbreviation my_id := @my_long_identity_function
