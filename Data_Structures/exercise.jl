X = rand(Float64, (100, 3))
y = rand(100)

X = [ones(100) X]

β = inv(transpose(X) * X) * transpose(X) * y