struct Rectangle
    width::Float64
    height::Float64
end

struct ParRectangle{T}
    width::T
    height::T
end

r1 = ParRectangle{Int}(3, 8)

r2 = ParRectangle{Float32}(2.78, 3.14)

r3 = ParRectangle{String}("three", "five")

typeof(r1)

typeof(r2)
typeof(r3)

ParRectangle{Float64} <: ParRectangle

struct NumRectangle{T <: Real}
    width::T
    height::T
end

r4 = NumRectangle{String}("three", "five")

struct Rational{T<:Integer} <: Real
    num::T
    den::T
end

r = Rational(4, 5)

typeof(r)

struct NewShape{T<:AbstractString, P<:Number}
    name::T
    color::T
    x_coord::P
    y_coord::P
end

rect = NewShape("Rectangle", "Red", 5.5, 7.5)
typeof(rect)