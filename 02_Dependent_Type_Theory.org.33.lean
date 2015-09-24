/- page 28 -/

import standard
import data.sigma
open sigma

variable A : Type
variable B : A → Type
variable a : A
variable b : B a

check sigma.mk a b  -- Σ (a : A), B a
check ⟨a, b⟩         -- Σ (a : A), B a
check pr1 ⟨a, b⟩     -- A
check pr₁ ⟨a, b⟩     -- alternative notation; use \_1 for the subscript
check pr2 ⟨a, b⟩     -- B (pr₁ ⟨a, b⟩)
check pr₂ ⟨a, b⟩     -- alternative notation

eval pr1 ⟨a, b⟩      -- a
eval pr2 ⟨a, b⟩      -- b
