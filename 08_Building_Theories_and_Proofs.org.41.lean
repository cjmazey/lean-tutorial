import standard
import standard

namespace my_namespace
export bool (hiding measurable)
export nat
export list
end my_namespace

check my_namespace.band
check my_namespace.add
check my_namespace.append

open my_namespace

check band
check add
check append
