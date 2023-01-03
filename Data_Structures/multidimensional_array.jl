Array{Float64, 3}(undef, (5, 4, 3))

Array{Union{Int64, Nothing}, 4}(nothing, (2, 3, 3, 2))

Array{Union{String, Missing}}(missing, 4, 3, 2)

v = Vector(1:60);
arr1 = reshape(v, (5, 4, 3))

# using single or double semicolon
[1;5 ;; 2;6 ;; 3;7 ;; 4;8]