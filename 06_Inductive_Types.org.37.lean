/- page 90 -/

import standard
inductive binary_tree :=
| leaf : binary_tree
| node : binary_tree → binary_tree → binary_tree
