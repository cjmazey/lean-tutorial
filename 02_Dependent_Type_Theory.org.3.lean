import standard
import standard
open bool nat prod

-- BEGIN
check nat               -- Type₁
check bool              -- Type₁
check nat → bool        -- Type₁
check nat × bool        -- Type₁
check nat → nat         -- ...
check nat × nat → nat
check nat → nat → nat
check nat → (nat → nat)
check nat → nat → bool
check (nat → nat) → nat
-- END
