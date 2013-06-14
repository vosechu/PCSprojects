# variant 1
def sum_of_cubes(number)
  if number == 1
    return 1
  else
    return number**3 + sum_of_cubes(number - 1)
  end
end

# variant 2
def sum_of_cubes2(number)
  if number == 1
    return 1
  else
    remaining = sum_of_cubes2(number -1)
    return sum(number**3, remaining)
  end
end
def sum(value, remaining)
  return value + remaining
end

puts "variant 1 #{sum_of_cubes(4)}"
puts "variant 2 #{sum_of_cubes2(4)}"