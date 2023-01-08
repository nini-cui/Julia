read(stdin, Char)

write(stdout, "Julia is cool")

write(stdout, "Julia is cool.");

readline(stdin)

for line in eachline(stdin)
    if line == "exit"
        break
    end
end

while !eof(stdin)
    c = read(stdin, Char)
    if c ∈ ['q', 'Q']
        break
    end
    println("Typed >>> $c")
end