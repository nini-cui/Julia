*("Julia", " Programming")

f(x::Float64, y::Float64) = x^2 + y^2
f(3.0, 6.0)

f(x::Number, y::Number) = x^2 + y^2

methods(f)

# with data type any
f(x) = "I couldnt find the correct method"
f(x::Any, y::Any) = "I couldnt find the correct method" 

methods(f)

f("xyz", 5)

g(x::Int64, y) = x * y
g(x, y::Int64) = x / y
g(x::Int64, y::Int64) = x + y

h(x=3, y=4) = x + y
h()
h(x::Int, y::Int) = x - y
h()

