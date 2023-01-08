# seperating design and implementation

# module MyModule
# export

# using MyModule
# myfunc() - this function is exported
# MyModule.mystruct - the struct is not exporeted

# import MyModule
# MyModule.mystruct

# import MyModule:myfunc
# using MyModule:mystruct

# include(filename)