# exercise 1
struct rectangularPrism{T <: Real}
    width::T
    length::T
    height::T
end

recprism = rectangularPrism(1,2,3)

recvolumn = recprism.width * recprism.length * recprism.height

# exercise 2
myint = 42
myfloat = float(myint)

# exercise 3 

struct body_mass_index{T<:AbstractString, S<:Real, P<:Number}
    name::T
    weight::S
    height::P
end

body_mass_arthur = body_mass_index("Arthur", 75, 1.80)
BMI = round(body_mass_arthur.weight/(body_mass_arthur.height)^2)
"Hello $(body_mass_arthur.name). You are $(body_mass_arthur.weight) kg and $(body_mass_arthur.height) m. Your BMI is $BMI"
