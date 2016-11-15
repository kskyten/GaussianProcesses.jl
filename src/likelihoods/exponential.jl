"""
# Description
Constructor for the Exponential likelihood


# Arguments:
* `θ::Float64`: rate parameter
"""
type Exponential <: Likelihood
    Exponential() = new()
end

function logdens(exponential::Exponential, f::Vector{Float64}, y::Vector{Float64})
    return [Distributions.logpdf(Distributions.Exponential(exp(fi)),yi) for (fi,yi) in zip(f,y)]
end

get_params(exponential::Exponential) = []
num_params(exponential::Exponential) = 0