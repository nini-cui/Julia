arr = [3, 5, 7, 9, 42, 999, 11, 13, 15, 999, 44]

for el ∈ arr
    if el == 999
        println("Break condition is met!")
        break
    end
    println("the current element is: $el")
end

# using while loop
i = 1 
while i <= length(arr)
    if arr[i] == 999
        println("Break condition is met!")
        break
    end
    println(arr[i])
    global i += 1
end

# using continue keyword
for el ∈ arr
    if el == 999
        println("Continue condition is met!")
        continue
    end
    println(el)
end

i = 0

while i < length(arr)
    global i += 1
    if arr[i] == 999
        continue
    end
    println(arr[i])
end

for el in arr
    if el % 2 == 1 continue end
    println(el)
end