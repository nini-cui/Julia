pow(a, b=2) = a^b

findmin(x, y) = x < y ? x : y
findmin(x, y...) = findmin(x, findmin(y...))

findmin(x, y=x) = x < y ? x : y
findmin(x, y...) = findmin(x, findmin(y...))
findmin(10)