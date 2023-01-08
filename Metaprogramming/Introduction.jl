# abstract syntax tree

using Dates

# myfunction is function name, when we call gettime(), the argument should be a function name
function gettime(myfunction)
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()
    duration = t1 - t0
    println("Run time: $duration")
    return result
end

# using anonymous function

gettime(() -> rand(1_000_000))
gettime(() -> println("Nini nini"))

func() = rand(1_000_000)
gettime(func)

@time rand(1_000_000)
@time println("Metaprogramming is fun")