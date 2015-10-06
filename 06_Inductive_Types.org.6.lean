/- page 79 -/

import standard
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
definition next (d : weekday) : weekday :=
weekday.cases_on d monday tuesday wednesday thursday friday saturday sunday

definition previous (d : weekday) : weekday :=
weekday.cases_on d saturday sunday monday tuesday wednesday thursday friday

eval next (next tuesday)
eval next (previous tuesday)

example : next (previous tuesday) = tuesday := rfl
end weekday
-- END
