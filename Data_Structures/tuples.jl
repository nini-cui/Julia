tpl1 = (3, "julia", 2022, 4.12)
typeof(tpl1)

tpl2 = tuple(3, "julia", 2022, 4.12) # lowercase "t" is a function

tpl1 === tpl2

supertype(Tuple)

tpl3 = "Julia", 5+7, 10//3
typeof(tpl3)

t1 = (6, )
typeof(t1)

tpl1[2:3]

tpl = (name="Julia", year=2022, version=1.7)
tpl[3]

tpl.name

mathConsts = (MathConstants.pi, MathConstants.e, MathConstants.golden)
p, e, g = mathConsts
p
e
g

nt = (3, 4, 5, 6)
typeof(nt)

ntuple(x -> x^3, 5)

in(2022, tpl1)

2022 ∈ tpl1 #\in

1999 ∉ tpl1