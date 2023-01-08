num = 7 + 8

s = :num

typeof(s)
supertype(Symbol)

s
eval(s)

Symbol("num")

:(a + b)

# first way of creating expression
ex = :(a + b)

typeof(ex)

supertype(Expr)

eval(ex)

a=7; b=6.4
eval(ex)

# second way
Meta.parse("a + b")

# third way
# if expression is more than one line
:(
    begin
        c = a + b
        d = c^2
        e = π*d
    end
)

quote
    c = a + b
    d = c^2
    e = π*d
end

# see the representation of an expression
dump(ex)

propertynames(ex)
ex.head
ex.args

# forth way
Expr(:call, :+, :a, :b)

ex2 = :(3x - 7y + z*t)
dump(ex2)

ex2.args
ex2.args[1]
ex2.args[2].args
ex2.args[3].args

using GraphRecipes, Plots

plot(ex2, fontsize=16)

expp = :(
    function power(a, b)
        return a^b
    end
)
expp.head

exp2 = :(
    for i in 1:5
        println(i)
    end
)
exp2.head

exp3 = :(
    if a < b
        println(a)
    else
        println(b)
    end
)
exp3.head

:([x, y, z, t]) |> dump

# creating struct
mutable struct Point
    a
    b
end

Expr(:struct, true, :Point, Expr(:block, :a, :b))

mutable struct Point1
    a::Float64
    b::Float64
end

Expr(:struct, true, :Point,
     Expr(:block,
          Expr(:(::), :a, :Float64),
          Expr(:(::), :b, :Float64)))

:(mutable struct Point
    a::Float64
    b::Float64
end) |> dump

:(x - 3y)

x = 5

:($x - 5y)

:(:x) |> dump

:(a - :x) |> dump

ref = QuoteNode(:variable)
:(var = $ref)

ref2 = :variable2
:(var2 = $ref2)