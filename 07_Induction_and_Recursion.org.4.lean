/- page 100 -/

import standard
open bool

definition neg : bool → bool
| neg tt := ff
| neg ff := tt

theorem neg_neg : ∀ (b : bool), neg (neg b) = b
| neg_neg tt := rfl    -- proof that neg (neg tt) = tt
| neg_neg ff := rfl    -- proof that neg (neg ff) = ff
