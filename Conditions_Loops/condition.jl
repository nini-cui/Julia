score = 50

if score >= 85
    println("Your grade is A")
else 
    if score >= 70
        println("Your grade is B")
    else 
        if score >= 60
            println("Your grade is C")
        else
            println("Your grade is F")
        end
    end
end

println("Enter your score")
score = readline();
score = parse(Int64, score)

# leq
if 85 ≤ score ≤ 100
    println("Your grade is A")
elseif 70 ≤ score < 85
    println("Your grade is B")
elseif 60 ≤ score < 70
    println("Your grade is C")
elseif 0 ≤ score < 60
    println("Your grade is F")
else 
    println("You haven't entered a valid score")
end

score = 70
score > 50 ? "passed" : "failed"

score = 55
score > 85 ? "Grade A" : score > 60 ? "Grade B" : "Grade C"
