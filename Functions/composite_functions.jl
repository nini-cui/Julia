x = rand(-10:10, 20)
square(x) = x.^2
# (sum ∘ square)(x)

x |> square |> sum

str = "Writing functions in Julia Programming is fun."

str |> split .|> length

str |> split .|> first

