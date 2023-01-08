for i in 1:4
    println(i^2)
end

# using "=" to replace "in" keyword
for j = 1:4
    println(j^3)
end

# using "in" operator
for k ∈ 1:4
    println(k^2)
end

# using collector as range
for names ∈ ["Julia", "R", "Python", "C"]
    println(names)
end

# do not know the length, using length()

arr = rand(5:25, 5)
for i in 1:length(arr)
    println("$i element is $(arr[i])")
end

# enumerator
for (index, value) ∈ enumerate(arr)
    println("The $(index). element is $(value).")
end

mat = rand(15:44, (3, 2))

for row in 1:size(mat, 1)
    for col in 1:size(mat, 2)
        println("Row: $row, Column: $col, Value: $(mat[row, col])")
    end
end

for row in 1:size(mat, 1), col in 1:size(mat, 2)
    println("Row: $row, Column: $col, Value: $(mat[row, col])")
end

for row in 1:6, col in 1:4
    print((row, col))
    if col == 4
        println()
    end
end

names = ["Albert", "Marie", "Isaac", "Rosalind", "Richard"]
surnames = ["Einstein", "Curie", "Newton", "Franklin", "Feynman"]
birthyears = [1879, 1867, 1643, 1918, 1900]

print(zip(names, surnames, birthyears))

for (name, surname, birthyear) ∈ zip(names, surnames, birthyears)
    println((name, surname, birthyear))
end

d = Dict("a" => 10, "b" => 20, "c" => 30, "d" => 40)
for(key, val) in d
    println("Key is: $key, Value is: $val")
end

for item in d
    println("Key is: $(item.first), Value is: $(item.second)")
end

# reading a file
file = filename
for line in eachline(file)
    println(line)
end

arr = rand(-1_000_000:1_000_000, 100)
maxnum = typemin(Int64)

for num ∈ arr
    if num > maxnum
        maxnum = num
    end
end
println(maxnum)

sum = 0
n = 0

for num = arr
    sum += num
    n += 1
end
average = sum / n
println("Average is: $average")