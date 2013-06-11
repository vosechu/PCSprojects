# When is it acceptable to use CamelCase?
puts "use CamelCase when naming classes"
# When do we use do...end instead of {...}?
puts "use do end instead of {} when your block needs to be on multiple lines"

# In Test::Unit, what is the difference between assert and assert_equal?
puts "assert fails unless test is a true value"
puts "assert_equal fails unless expected val == actual val"

# Where do we put code that needs to be run before or after each test?
puts %|
def setup
end
|

# When we use setup, why do we need to use instance variables?
puts "you use instance variables to enable use of the var in subsequent methods"

# How do you run all the specs in a folder?
puts "spec ."

# What is a stub?
puts "a stub is an object that implements the same interface as one of the supporting objects but returns the values we want"

# What is a mock?
puts "a mock is an object that knows which methods should be called and with what arguments"

# Why do we make sure that our tests are red before fixing them?
puts %|
def test_with_descriptive_title
  flunk("failure message, if you want one")
end
|

# If your company won’t allow full tests, what does it mean to “exercise your code, even just a little bit.”
puts "write a bare minimum unit test with no asserts at all. It will still tell you a lot"