import standard
import data.nat
open nat

-- BEGIN
local notation `[` a `**` b `]` := a * b + 1
local infix `<*>`:50 := λ a b : ℕ, a * a * b * b
-- END
