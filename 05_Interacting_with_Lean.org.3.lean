import standard
import data.nat
open nat

find_decl ((_ * _) = (_ * _))
find_decl (_ * _) = _, +assoc
find_decl (_ * _) = _, -assoc

find_decl _ < succ _, +imp, -le
