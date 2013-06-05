require 'yaml'

# What is recursion?
puts "recursion is a method that calls itself"

# When learning recursion, what is the defacto “hello world” style program?
puts "the hello world for recursion is factorials"

# Use pseudo code to complete a recursive sort
    # Hint: There are three steps to any recursive algorithm
    # Check to see if there’s any work left to do and return if not. (early return)
    # Do some work (reduce the problem)
    # Call yourself (recurse) (sometimes 2 & 3 are the same step)

# Evens:

# How do you redirect the output of a program to a file?
puts "redirect: ruby beer.rb > output.txt"

# How do you open and read the contents of a file?
filename = 'testText.txt'

puts %/
read_contents = File.read filename
/
puts File.read filename

# How do you open and write text to a file?
puts %/
filename = 'testText.txt'
test_string = "I promise that I will never mention gazpacho again"
File.open filename, 'w' do |f|
  f.write test_string
end
/

# How do you put a variable inside a string? (Interpolation)
puts 'this is a #{variable} inside a string'

# What does YAML stand for?
puts "YAML stands for yet another markup language"

# How do you convert an object to YAML and then convert it back to an object? (Marshal/Serialize)
puts %|require 'yaml'
f = object.to_yaml
YAML:: load f|

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write (object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

test_array = ["quiche", "applesauce", "blue plate special"]
filename = 'testyaml.txt'
yaml_save test_array, filename
read_array = yaml_load filename
puts "this is the array : #{read_array}\n"

# How do you do a recursive search for files when using Dir (Globbing)
puts "Dir['*/*.jpg']"
this_dir = Dir['./*.txt']
puts this_dir

puts "extra *****************\n"

# What does + do to a Time object?
puts "+ adds seconds to the value of the Time object"

# Explain what the epoch is. When does the epoch end? What happened to 30-year house loans in 2008?
puts "the epoch began Jan 1, 1970, and ends Jan 2038"

# How is a Hash different from an Array?
puts "a hash had key|value pairs that are unordered"
puts "an array has integer|value pairs that are ordered"

# When using each on a Hash, will objects always come out in the correct order?
puts "object will come out in the order that they are entered into the hash"

# What is a Range? How do you puts all the numbers from 0 to 26?
puts " a range is a set of values from the start value to the end value"

# What is the difference between Time.now.class and Time.class?
puts "Time.class => Class => Time is a class"
puts "Time.now.class => Time => Time.now is an instance of class Time"