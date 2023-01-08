input = nothing

while input != 0
    print("Enter a number (0 to exit): ")
    global input = parse(Int, readline())
end

j = 1
while j < 5
    println(j^2)
    global j += 1
end

# loop through an array
arr = [3, 4, 5, 7, 9, 11, 15]
while !isempty(arr)
    print(pop!(arr), " ")
end

# read file
file = open(filename, "r")
line = readline(file)

while line != ""
    println(line)
    line = readline(file)
end
close(file)