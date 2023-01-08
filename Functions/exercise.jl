function commonDivisor(a::Integer, b::Integer)::Integer
    global divisor = a > b ? a : b
    while true
        divisor -= 1
        if a % divisor == 0 && b % divisor == 0
            return divisor
        end
    end
end

commonDivisor(8, 12)
commonDivisor(7, 12)

# function gcd{T<:Integer}(a::T, b::T)
function greatestcommondivisor(a::Integer, b::Integer)::Integer
    neg = a < 0
    while b != 0
        t = b
        b = rem(a, b)
        a = t
    end
    g = abs(a)
    neg ? -g : g
end

greatestcommondivisor(4, 12)
greatestcommondivisor(7, 12)

function fibo(n::Integer)::Integer
    x, y = 0, 1
    for i in 1:n
        x, y = y, x+y
    end
    return x
end

fibo(3)
