# What alternative keyword can we use if we’re negating the boolean expression inside our if?
puts "unless"

# What is the ‘negative doppleganger’ for while?
puts "until"

# What is a “modifier form” of an expression? (Which I call a post-conditional)
puts "@title = new_title unless @read_only"

# What does a case statement return by default?
puts "case statement returns the values of nil if no when clause matches and there is no else"

# What two values evaluate to false inside an if?
puts "false and nil"

# What is a ternary expression used for (?:)?
puts "a compact if statement with the condition part coming before the question mark"

# What is a “guarded or” used for (||=)?
puts "a guarded or is for ensuring initialization of a variable to a value ( ||= ) "

# What’s the fastest way to make an array of words?
puts %|
%w{twinkle twinkle little star}
|
# When using symbols as Hash keys, what are the two ways to initialize a Hash using the curly brace notation? (1.9 hash syntax)
puts "hash = {'a' => 'cat', 'b' => 'dog'}"
puts "hash = { a: 'cat', b: 'dog'}"

# What is the name of the * operator?
puts "* is the splat operator"

# Should you use a for loop to iterate over an Array or Hash? If not, what’s the alternative?
puts "you should use each to loop over an array"
puts "using a for loop will just call each in the background"

# What is the difference between each and map?
puts "map will modify each element in the array"
puts "each will return each element in the array"

# What is a bang method?
puts "a bang method does something unexpected -- it may modify the contents of the variable in place"