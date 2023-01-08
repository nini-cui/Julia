varfunc(x...) = (x)

varfunc(3, 4, 5)
varfunc(3)

function printall(x...)
    println(x)
end

printall("Julia")

printall("Julia", "Python")
printall("Julia", "Python", "C++", "R", "Java")

addall(x, y...) = x + addall(y...)
addall(x) = x

addall(7)

addall(5, 7, 12)

addall(7, 12, 14, 32, 35)

findmin(x, y) = x < y ? x : y

findmin(x, y...) = findmin(x, findmin(y...))

function printtype(args...)
    for (i, arg) in enumerate(args)
        println("$i: type of $arg is $(typeof(arg))")
    end
end

printtype(1, 3, 2.78, "math", true, 4 + 6im)