mutable struct Layer
    w::Array{Float64, 2}
end

Layer(input::Int, output::Int) = Layer(rand(Float64, (output, input)))