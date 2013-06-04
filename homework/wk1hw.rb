# What is your favorite color?
puts "my favourite color is red"

# How old are you in seconds? (If you did this with only a calculator how would you do it?)
birthday = Time.local(1977, 8, 12)
puts "Seconds I have been alive: #{Time.now - birthday}"

# What is a String?
puts "A String is an immutable array of characters."

# What’s the difference between single and double-quoted strings?
puts "single quoted strings: do not process escape chars"
puts "double quoted strings: can do interpolation of variables, escape chars"

# How do you use a quote mark inside of a string? (escaping characters)
puts "use quote marks by \\\"escaping\\\" them"

# What is a variable?
puts "a variable is a pointer, a reference to a memory space containing
stored information"

# How do you put a variable inside a string? (interpolation or concatenation)
variable = "silly variable"
puts "this is how you put a #{variable} in a string"

# What does the to_s or the to_i method do and why do we need them? (type casting)
puts "to_s returns the string version of an object"
puts "to_i returns the integer version of an objects"

# Evens:
# How do you call a method on a variable?
puts %/
you can call a method in several ways:
obj.do_method(parameter)
obj.do_method parameter
obj.send(:method, parameter)
/
# How do you generate a random number between 1 and 20?
puts "random number between 1 and 20: #{1 + rand(20)}"

# How do you define a new method?
puts %/def new_method
  puts "this is a newly defined method"
end
/
def new_method
  puts "this is a newly defined method"
end
new_method

# How do you define a new method that takes 2 parameters?
puts %/def two_param_method(first, second)
  puts first * second
end
/
def two_param_method(first, second)
  puts first * second
end
two_param_method 10, 20

# What is a method?
puts "a method is a titled bundle of statements that are executed when the title is called"

# What happens if you specify that it needs 2 parameters but you only give it 1? (arity)
puts %/
if a method requires more parameters than are provided:
  ArgumentError: wrong number of arguments (1 for 2)
  /

# If you use a variable outside a function can it be used inside?
puts "local variables reside only within the method in which they are declared"
puts "they cannot be used outside the function"
puts "variables that are used outside a function can be used inside if they are passed as parameters"

# If you assign a new value inside the function, what is the value of the variable after the function? (overwriting vs shadowing)
puts "if you assign a new value inside the function, the values of the variable ouside the function is unchanged"
tough_var = "you can't even touch my variable"
def little_pest tough_var
  tough_var = nil
  puts "haha! I ruined your variable"
end
little_pest tough_var
puts tough_var

# If you don’t explicitly return a value from a function, what is returned? (implicit return)
puts "if you don't return a value, the last EVALUATED value is returned"
