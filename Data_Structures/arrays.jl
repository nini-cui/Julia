arr = [3, "Julia", 2022, 4.12]
arr[2:end]

# once array is created in this way, the data type of each element needs to be the same
arrprime = Int64[2, 3, 5, 7]
arrdouble = Float64[3.14, 2.718, 1.6]

# an array can contain another array
arrmixed = [7, 8.2, [3, 5, 7]]

newarray = arr[:]
arr == newarray
# memory addresses are not the same 
arr ≡ newarray

arr[1] = 8
arr

# check if an element is in an array
"Julia" ∈ arr

# issubset()
issubset(["abc", "def"], arr)

["abc", "def"] ⊆ arr
["abc", "def"] ⊊ arr

push!(arr, "α")

arr2 = ["Δ", "θ"]

append!(arr, arr2)\

deleteat!(arr, 3)
deleteat!(arr, [1, 3, 4])

# pop!()
pop!(arr)
arr

popfirst!(arr)
arr

# insert!
insert!(arr, 1, "α")
insert!(arr, 2, "λ")

# split()
str = "Julia, Python, R, Matlab, C, C++, Go, Java"
arrstr = split(str, ",")
