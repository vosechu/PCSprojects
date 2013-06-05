#your file should be called beer.rb
#the program should be called with Beer.song
#the program should output to STDOUT using puts
#separate verses with a single blank line

# counter starts at 99 and counts down
# each time it puts

class Beer
  def self.song
    bottles = 99
    while bottles > 0 do
      puts %|
      #{bottles} bottles of beer on the wall,
      #{bottles} bottles of beer,
      you take one down and pass it around,
      #{bottles -= 1} bottles of beer on the wall|
    end
  end
end

class Fixnum
  def bottles_of(drink="beer")
    bottles = self
    while bottles > 0 do
      puts %|
      #{bottles} bottles of #{drink} on the wall,
      #{bottles} bottles of #{drink},
      you take one down and pass it around,
      #{bottles -= 1} bottles of #{drink} on the wall|
    end
  end
end