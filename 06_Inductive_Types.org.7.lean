import standard
inductive weekday : Type :=
| sunday : weekday
| monday : weekday
| tuesday : weekday
| wednesday : weekday
| thursday : weekday
| friday : weekday
| saturday : weekday

namespace weekday
definition next (d : weekday) : weekday :=
weekday.cases_on d monday tuesday wednesday thursday friday saturday sunday

definition previous (d : weekday) : weekday :=
weekday.cases_on d saturday sunday monday tuesday wednesday thursday friday

-- BEGIN
theorem next_previous (d: weekday) : next (previous d) = d :=
weekday.induction_on d
(show next (previous sunday) = sunday, from rfl)
(show next (previous monday) = monday, from rfl)
(show next (previous tuesday) = tuesday, from rfl)
(show next (previous wednesday) = wednesday, from rfl)
(show next (previous thursday) = thursday, from rfl)
(show next (previous friday) = friday, from rfl)
(show next (previous saturday) = saturday, from rfl)
-- END
end weekday
