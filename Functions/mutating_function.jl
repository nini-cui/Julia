x = [35, 76, 43, -36, 12, 3, 24, -45]

sort(x)

x

sort!(x)

function padwithzeros(vector, n)
    x = [zeros(n); vector; zeros(n)]
    return x
end

padwithzeros(x, 3)

function padwithzeros!(vector, n)
    for i in 1:n
        insert!(vector, 1, 0)
    end

    for i in 1:n
        append!(vector, 0)
    end
end

padwithzeros!(x, 3)
x