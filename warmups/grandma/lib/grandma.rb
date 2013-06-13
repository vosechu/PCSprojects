# Write a Deaf Grandma program.

# Whatever you say to grandma (whatever you type in), she should respond with

# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so) and yells back

# NO, NOT SINCE 1938!
# To make your program really believable, have grandma shout a different year each time;
# maybe any year at random between 1930 and 1950.

# You can't stop talking to grandma until you shout BYE.

class TestGrandma < MiniTest::Unit::TestCase

  def setup
    @granny = Grandma.new
  end

  def test_grandma_responds
    assert_equal "HUH? SPEAK UP, SONNY!", @granny.talk("anything")
  end

  def test_shout_at_grandma
    assert_match /NO, NOT SINCE/, @granny.talk("ANY")
  end

  def test_bye_grandme
    assert_match "BYE!", @granny.talk("BYE")
  end
end

class Grandma
  def initialize
    stuck_chatting = true
    while stuck_chatting
      puts talk(gets.chomp)
    end
  end

  def talk(chat)
    if chat =~ /BYE/
      "BYE!"
    elsif chat == chat.upcase
      "NO, NOT SINCE #{1930 + rand(20)}"
    else "HUH? SPEAK UP, SONNY!"
    end
  end
end