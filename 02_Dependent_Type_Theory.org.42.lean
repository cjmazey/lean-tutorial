import standard
definition id {A : Type} (x : A) := x

variables A B : Type
variables (a : A) (b : B)
-- BEGIN
check @id        -- Π {A : Type}, A → A
check @id A      -- A → A
check @id B      -- B → B
check @id A a    -- A
check @id B b    -- B
-- END
