module gaussianprocesses

# Functions that should be available to package
# users should be explicitly exported here

export GP, predict, rbf

# all package code should be included here
include("GP.jl")
#include("expected_improvement.jl")
#include("mean_functions.jl")
include("kernels.jl")

end # module