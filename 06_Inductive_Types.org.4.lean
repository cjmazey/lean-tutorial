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
definition number_of_day (d : weekday) : nat :=
weekday.cases_on d 1 2 3 4 5 6 7
-- END
