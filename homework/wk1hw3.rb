# Thursday
# Reading to do before class

# Chris Pine’s Learn to Program (Chapter 15)
puts "chapter 15 is beyond this fine book"
# (Even students) Chapter 13
puts  "chapter 13 "
# (Odd students) Chapter 14
# Reading questions due before class

# What is a REPL? Is irb a REPL, why or why not?
puts "REPL == read, eval, print, loop"
puts "it is an interactive computer programming environment"
puts "REPLs facilitate exploratory programming"

# Why is the PickAxe book called PickAxe?
puts "the PickAxe book is called PickAxe because it has a picture of a pickaxe on the front"

# Evens:

# How do we add methods to existing classes or modules (Reopening)
puts %|
class Integer
  def to_eng
    if self == 5
      english = "five"
    else
      english = "forty-two"
    end
  end
end|
# Why would we want to reopen a class or a module?
puts "we want to reopen classes or modules to add or change functionality of an already functionally complete Class"

# What is the first method called when you instantiate an object? (Constructor)
puts "def initialize"

# Could you call initialize or redefine new?
# Why would you or wouldn’t you do that?
puts "you do not want to redefine new because new cannot be further abstracted"

# What does the private keyword do?
puts "the private keyword makes all following methods accessible only to the class scope"


# Odds:

# What is the difference between a Proc and a method?
# Could you have defined maybe_do in some way other than using a Proc?
# How do you create a method that accepts a block as an argument?
# When you’ve passed a block into a method, how do you call it in the method? (Yield)
# Try profiling some of your code using the profile method in the book. Show me the output of the profile in a comment above the code. (Computers are fast, you may need to use sleep or a large number of iterations to make a meaninful number. Start with 10000.times do)
# Resources

# Apidock
# PickAxe