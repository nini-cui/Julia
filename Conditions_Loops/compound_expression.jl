volume = begin
    a = 12
    b = 9
    c = 5
    a * b * c
end

area = begin
    a = 12
    b = 9
    c = 5
    2 * (a*b + a*c + b*c)
end

# parameters are seperated by semicolone
volume = (a=12; b=9; c=5; a*b*c)

# parameters do not have to be in one row
volume = (a=12;
          b=9;
          c=5;
          a*b*c)



