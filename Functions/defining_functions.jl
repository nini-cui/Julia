numbers = rand(-1000:1000, 200)

maxnum = typemin(Int64)

for num in numbers
    if num > maxnum
        maxnum = num
    end
end
println(maxnum)

newnumbers = rand(0:1000_000, 1000)

for num in newnumbers
    if num > maxnum
        maxnum = num
    end
end
println(maxnum)

function mymax(array)
    maxnum = typemin(Int64)
    for num in array
        if num > maxnum
            maxnum = num
        end
    end
    return maxnum
end

# short function 
p(x, y) = x^y

function fact(n::Integer)
    f = 1
    for i ∈ 1:n
        f *= 1
    end
    return f
end

# specify the return type of a function

# multiple returns 
function absDiff(a, b)
    if a > b
        return a - b 
    else 
        return b - a
    end
end

# operators as functions
*(3, 4, 5)

function findmeansd(array)
    total = 0
    n = 0

    for el in array
        total += el
        n += 1
    end
    μ = total / n

    σ = 0
    for el in array
        σ += (el - μ)^2
    end
    σ = √σ/(n - 1)

    return μ, σ
end

avg, sd = findmeansd(array)

res = findmeansd(array)
res[1], res[2]

# anomalies functions
x -> 3x^2 + 5x - 4 

g = x -> 3x^2 + 5x - 4

(x, y, z) -> (x^3 - y^3)/z^3

