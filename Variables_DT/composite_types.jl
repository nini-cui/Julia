struct Rectangle
    width::Float64
    length::Float64
end

fieldnames(Rectangle)

rectangle1 = Rectangle(4, 7)

rectangle1.width
rectangle1.length

rectangle1.length = 5

mutable struct NewRectangle
    width::Float64
    height::Float64
end

newRectangle = NewRectangle(6, 8)
newRectangle.width
newRectangle.height
newRectangle.height = 9

supertype(Rectangle)

abstract type Shape end

mutable struct RectangleShape <: Shape
    width::Float64
    height::Float64
end

mutable struct Square <: Shape
    length::Float64
end

mutable struct Circle <: Shape
    radius::Float64
end

# Union
intstr = Union{Integer, AbstractString}
x = 123; y="123"; z=123.0

x::intstr
y::intstr
z::intstr
