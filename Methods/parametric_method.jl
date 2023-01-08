test_types(x::T, y::T) where {T} = "Arguments have the same type"
test_types(4, 5)
test_types(5.6, 9.8)
test_types("abc", "def")

test_types(x, y) = "Argument types are different"
test_types(4, 5.6)

find_type(x::T) where {T} = T
find_type("abc")
find_type(4.2)

test_types_number(x::T, y::T) where {T <: Number} = "Same type numbers!"
test_types_number(3, 5)

test_types_number(x::Number, y::Number) = "Both numbers but different types"
test_types_number(3, 7.7)

test_types_number(x, y) = "At least one argument is not number"
test_types_number("abc", 5)

find_types(x::T, y::P) where {T<:String, P<:Number} = "$x is String and $y is Number"
find_types("Hello Nini", 18)

check_types(a::Array{T}, x::T) where {T} = "$x has the same type with the array."
check_types(Vector(1:15), 20)

abstract type Shape end

struct Circle <: Shape
    radius::Float64
end

struct Rectanglee <: Shape
    width::Float64
    height::Float64
end

circleArea(s::Circle) = π * s.radius^2
recArea(s::Rectanglee) = s.width * s.height

rect = Rectanglee(3.5, 9.6)
recArea(rect)

cir = Circle(5)
circleArea(cir)

Base.show(io::IO, s::Shape) = println(io, "Shape: ", typeof(s), ", Area: ", circleArea(s))
cir

# limit the number of arguments a function can take
two_args(x::Vararg{Number, 2}) = maximum(x)
two_args(5, 3.4)