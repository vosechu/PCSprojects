class Grandma
  def talk(chat)
    if chat =~ /BYE/
      "BYE!"
    elsif chat == chat.upcase
      "NO, NOT SINCE #{1930 + rand(20)}"
    else "HUH? SPEAK UP, SONNY!"
    end
  end
end