cvec = [1, 2, 3, 4, 5]
rvec = [1 2 3 4 5]

mat = [1 2 3; 4 5 6; 7 8 9; 10 11 12]
mat2 = [1 2 3
        4 5 6
        7 8 9
        10 11 12]

# get the dimension of vector - ndims()
ndims(cvec)
ndims(rvec)
ndims(mat)

# size()
size(cvec)
size(rvec)
size(mat)

# get the number of rows or columns
size(mat, 1)
size(mat, 2)

# get total number of elements 
length(mat)

mat

# slicing
mat[2, 3]
mat[end, end] 

mat[6]

mat[2:3, 2:3]

# second row
mat[2,:]
# second column
mat[:,2]

# column vectors
cvec1 = [1, 2, 3, 4, 5]
cvec2 = [6, 7, 8, 9, 10]
cvec3 = [11, 12, 13, 14, 15]

# vcat() - vertically
vcat(cvec1, cvec2, cvec3)

# hcat() - horizontally
hcat(cvec1, cvec2, cvec3)

rvec1 = [1 2 3 4 5]
rvec2 = [6 7 8 9 10]
rvec3 = [11 12 13 14 15]

vcat(rvec1, rvec2, rvec3)

hcat(rvec1, rvec2, rvec3)

[cvec1; cvec2; cvec3]
[cvec1, cvec2, cvec3]
[cvec1 cvec2 cvec3]

[rvec1; rvec2; rvec3]
[rvec1, rvec2, rvec3]
[rvec1 rvec2 rvec3]

m1 = [1 2 3; 4 5 6]
m2 = [11 12 13; 14 15 16]
mver = [m1; m2]
[m1, m2]
[m1 m2]

# undef
emptymat = Matrix(undef, 2, 3)

# specify the data type of the matrix
Matrix{Any}(undef, 2, 3)

Matrix{Float64}(undef, 3, 2)

mat = Matrix{Union{Int64, String}}(undef, 3, 4)

mat[2, 3] = 999
mat[1, 2] = "number"

mat

nothing
typeof(nothing)

# nothing is used when there is nothing to return
# empty array
Matrix{Any}(nothing, (2, 3))
Matrix{Union{Int64, Nothing}}(nothing, (2, 3))

# missing
missing
typeof(missing)
Matrix{Union{Missing, String}}(missing, (2, 3))

# reshape
reshape(1:15, 3, 5)

zeros(2, 3)
ones(2, 3)
# change the data type
ones(Int32, 2, 3)

trues(2, 2)

falses(2, 3)

# specify the values that you want
fill(3.14, (3, 2))
rand(1:20, 3, 5)

randn(3, 5)

# similar function
m1 = reshape(range(12., 23., length=12), (4, 3))
m2 = similar(m1)

m3 = similar(m1, (3, 3))