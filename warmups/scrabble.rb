class Scrabble

	@values = {
		1 => ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
		2 => ['d', 'g'],
		3 => ['b', 'c', 'm', 'p'],
		4 => ['f', 'h', 'v', 'w', 'y'],
		5 => ['k'],
		8 => ['j', 'x'],
		10 => ['z', 'q']
	}

	def self.score(word)
		char_array = word.downcase.split('')



		value(char_array)
	end

	def self.value(char_array)
		sum = 0
		char_array.each do |i|
			@values.each do |k, v|
				if v.include? i
					sum += k
				end
			end
		end
		return sum
	end

end


puts Scrabble.score('cabbage')
puts Scrabble.score('Neil')
puts Scrabble.score('onomatopoeia')