function positionargs(x, y=10, z=20, t=30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end

positionargs(1)

function keywordargs(x; y=10, z=20, t=30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end

keywordargs(1)
keywordargs(1, t=300)
keywordargs(1, t=300, z=200)
keywordargs(1, z=999, y=444, t=555)