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
weekday.cases_on d rfl rfl rfl rfl rfl rfl rfl
-- END
end weekday
