/- page 78 -/

import standard
import data.nat
open nat

inductive weekday : Type :=
| sunday : weekday
| monday : weekday
| tuesday : weekday
| wednesday : weekday
| thursday : weekday
| friday : weekday
| saturday : weekday

-- BEGIN
namespace weekday
local abbreviation cases_on := @weekday.cases_on

definition number_of_day (d : weekday) : nat :=
cases_on d 1 2 3 4 5 6 7
end weekday

eval weekday.number_of_day weekday.sunday

open weekday (renaming cases_on → cases_on)

eval number_of_day sunday
check cases_on
-- END
