touch("Streams_Networking/sample_file.txt")

# readlines
file = open("Streams_Networking/sample_file.txt")
readlines(file)
close(file)

# do
fname = "Streams_Networking/sample_file.txt"
open(fname) do files
    readlines(files)
end

# eachline
open(fname) do file
    for line in eachline(file)
        println(line)
    end
end

vec = 1:10

map(x -> x^3, vec)

map(vec) do x 
    x^3  
end

# if open a file with write mode, only updated content will be kept 
f2 = open(fname, "w")
write(f2, "This is a new line...\n")
close(f2)

# using append mode to append content to a file
f3 = open(fname, "a")
write(f3, "I am just writing a new line to see the changes\n")
close(f3)

open(fname, "a") do f
    write(f, "one more line...\n")
    close(f)
end

readdir()
readdir("Streams_Networking")
mkdir("Streams_Networking/Data_Files")

for file in ["sales", "employees", "products"]
    touch("Streams_Networking/Data_Files/"*file*".txt")
end

dir = "Streams_Networking/Data_Files"
files = readdir(dir)

for fname in files
    file = dir*"/"*fname
    open(file, "a") do f
        write(f, "This is the first line in the file: "*fname)
        close(f)
    end
end

