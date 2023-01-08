mutable struct ModelVars
    x₁::Float64
    x₂::Float64
    x₃::Float64
end

fieldnames(ModelVars)

m1 = ModelVars(2.5, 5.6, 7.8)
methods(ModelVars)

abstract type Student end

mutable struct CSStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64
    specialization::String
    programming_language::String
end

methods(CSStudent)

cs1 = CSStudent("George", 123456, 3.75, "Data Science", "Julia")

CSStudent(name, id, gpa) = CSStudent(name, id, gpa, "Data Science", "Julia")

cs2 = CSStudent("Nini", 1759, 6.0)

methods(CSStudent)

function CSStudent(; name,
                     student_id,
                     gpa = NaN,
                     specialization = "Data Science",
                     programming_language = "Julia")
    return CSStudent(name, student_id, gpa, specialization, programming_language)
end

cs4 = CSStudent(name="Mario", student_id=7839, specialization="Mobile Developement", programming_language="Java")
cs4.gpa = 7
cs4
cs5 = CSStudent(name="Nina", student_id=123456, programming_language="Python")

students = CSStudent[]
push!(students, cs1, cs2, cs4, cs5)
students

mutable struct MathStudent
    name::String
    student_id::Int64
    gpa::Float64

    MathStudent(name, student_id, gpa) = gpa < 0 ? throw("gpa cannot be negative") : new(name, student_id, gpa)
end

m1 = MathStudent("Karl", 111111, 3.4)
m2 = MathStudent("KK", 222, -9)

mutable struct EconStudent
    name::String
    student_id::Int64
    gpa::Float64

    function EconStudent(name, student_id, gpa)
        if name == ""
            throw("Student name cannot be empty")
        elseif student_id == NaN || student_id == 0
            throw("Student ID cannot be empty")
        elseif gpa < 0 || gpa > 4.0
            throw("Enter a valid gpa")
        else
            new(name, student_id, gpa)
        end
    end
end

es1 = EconStudent("", 12345, 6.0)

mutable struct PhysStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64

    PhysStudent() = new()
end

ps1 = PhysStudent()

methods(PhysStudent)



