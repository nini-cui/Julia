str = "Julia language"

str[begin]
str[end]
str[end-1]
str[end ÷ 2]
str[3:5]
str[end-4:end]

firstindex(str)
lastindex(str)

str1 = "First String"
str2 = "Second String"
string(str1, str2)
str1 * " " * str2
"Julia "^4

x = 4; y = 5;
"First string is $x, second string is $y and sum is $(x+y)"