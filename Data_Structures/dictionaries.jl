d1 = Dict()

# dictionary is mutable
# there is no order in dict
studentgrades = Dict([("albert", 100), ("marie", 99), ("richard", 98), ("carl", 97)])

studentgrades = Dict("albert" => 100, "marie" => 99, "richard" => 98, "carl" => 97)

grades = Dict()
grades["albert"] = 100
grades["marie"] = 99
grades["richard"] = 98
grades["carl"] = 97

grades

grades["carl"] = 100

# get the number of key value pairs in a dictionary
length(grades)

# get the keys of a dictionary
keys(grades)

# get the values of a dictionary
values(grades)

"albert" ∈ keys(grades)

100 ∈ values(grades)

"isaac" ∈ keys(grades)

# use haskey()
haskey(grades, "isaac")

# get()
get(grades, "albert", "not found")

# ! can be used to modify dictionary
get!(grades, "bertrand", 85)

# getkey() - isnt it the same as get
getkey(grades, "albert", "einstein")

getkey(grades, "isaac", "newton")

# delete key value pairs 
delete!(grades, "carl")

# combine two dictionaries 
dict1 = Dict("a" => 5, "b" => 7, "c" => 9)
dict2 = Dict("d" => 6, "e" => 8, "f" => 10)
merge(dict1, dict2)

dict1 = Dict("a" => 5, "b" => 7, "c" => 9)
dict2 = Dict("a" => 7, "b" => 10, "d" => 15)

mergewith(+, dict1, dict2)
