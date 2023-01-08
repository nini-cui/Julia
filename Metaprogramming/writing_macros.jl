macro hello(exp)
    println("Hello ", exp)
end

@hello("Nini")
@hello "Nina"

macro hello2(exp1, exp2)
    println("Hello, ", exp1, " and ", exp2)
end

@hello2 "Nini" "Nina"

function func_hello(exp)
    println("Hello ", exp)
end

func_hello("nini")

# macro takes argument as an expression
@hello nini
# function takes argument as data
# func_hello(nini)
# it can be fixed by provididng the argument as a Symbol
func_hello(:Nini)

macro hello3(exp)
    :(
        println("Hello ", $(string(exp)))
    )
end

macro myprint(ex)
    :(
        println($ex)
    )
end

@myprint "Julia"

function _my_print(x)
    @myprint x 
end

x = "Python"

_my_print("Julia")

@macroexpand @myprint x

macro myprint2(ex)
    :(
        println($(esc(ex)))
    )
end

function _my_print2(x)
    @myprint2 x
end

_my_print2("Julia")

f(x) = x + 8
k(x) = x^3
h(x) = x / 10

f(k(h(4)))

4 |> h |> k |> f

macro chain(x, funs...)
    ex = Expr(:call, :($(funs[1])), :($x))
    for i in 2:length(funs)
        ex = Expr(:call, :($(funs[i])), :($ex))
    end
    return :($ex)
end

@chain 4 h k f

# using anonymous function
@chain 10 x->x^2 x->x/2 x->x*7 
