arr = [5, 8, 12, 17, 24, 42]
for i ∈ arr
    i % 2 == 0 ? i^2 : i^3
end

result = Int64[]
for i in arr
    if i % 2 == 0
        append!(result, i^2)
    end
    append!(result, i^3)
end

result

[iseven(x) ? x^2 : x^3 for x in arr]
