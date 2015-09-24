/- page 15 -/

import standard
constants A B : Type
check A              -- A : Type
check B              -- B : Type
check Type           -- Type : Type
check Type → Type    -- Type → Type : Type

set_option pp.universes true    -- display universe information

check A              -- A.{l_1} : Type.{l_1}
check B              -- B.{l_1} : Type.{l_1}
check Type           -- Type.{l_1} : Type.{l_1 + 1}
check Type → Type    -- Type.{l_1} → Type.{l_2} : Type.{imax (l_1+1) (l_2+1)}

universe u
constant C : Type.{u}
check C              -- C : Type.{u}
check A → C          -- A.{l_1} → C : Type.{imax l_1 u}

universe variable v
constants D E : Type
check D → E          -- D.{l_1} → E.{l_2} : Type.{imax l_1 l_2}
check D.{v} → E.{v}  -- D.{v} → E.{v} : Type.{v}
