/- page 27 -/

import standard
import data.list
open list

check list     -- Type → Type

check @cons    -- Π {T : Type}, T → list T → list T
check @nil     -- Π {T : Type}, list T
check @head    -- Π {T : Type} [h : inhabited T], list T → T
check @tail    -- Π {T : Type}, list T → list T
check @append  -- Π {T : Type}, list T → list T → list T
