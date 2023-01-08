arr = [5, 8, 12, 17, 24, 42]

[x^2 for x in arr]

[(x^2, y^2) for x ∈ 1:4, y ∈ 1:3]

# iseven()

[(i, j) for i=1:5 for j=1:i]

# generator - using parentheses
(x^2 for x ∈ 1:1000)

sum(x^2 for x ∈ 1:1000)

s = 0
@time for i = 1:1_000_000 s += i^2 end
