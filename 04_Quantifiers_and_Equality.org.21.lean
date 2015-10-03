/- page 55 -/

import standard
import data.nat
open nat

variable g : ℕ → ℕ → ℕ
variable Hg : g 0 0 = 0

theorem gex1 : ∃ x, g x x = x := exists.intro 0 Hg
theorem gex2 : ∃ x, g x 0 = x := exists.intro 0 Hg
theorem gex3 : ∃ x, g 0 0 = x := exists.intro 0 Hg
theorem gex4 : ∃ x, g x x = 0 := exists.intro 0 Hg

set_option pp.implicit true  -- display implicit arguments
check gex1
check gex2
check gex3
check gex4
