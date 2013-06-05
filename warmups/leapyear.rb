# Write a program that will take a year and report if it is a leap year. The tricky thing here is that a leap year occurs:

# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     except every year that is evenly divisible by 400.
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# Your program should be called as follows:

# Year.new(1996).leap?

class Year
  def initialize(year=1970)
    @year = year
  end
  def leap?
    # if divisible by 400 - is a leap year
    if @year % 400 == 0
      return true
    end
    # if divisible by 100 - is not a leap year
    if @year % 100 == 0
      return false
    end
    # if divisible by 4 - is a leap year
    if @year % 4 == 0
      return true
    end
    false
  end
end

class Fixnum
  def leap_year?
    # if divisible by 400 - is a leap year
    if self % 400 == 0
      return true
    end
    # if divisible by 100 - is not a leap year
    if self % 100 == 0
      return false
    end
    # if divisible by 4 - is a leap year
    if self % 4 == 0
      return true
    end
    false
  end
end
