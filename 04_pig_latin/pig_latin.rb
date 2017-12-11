#write your code here
def translate (sent)

	vowels = ["a" , "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", 
		"n", "p", "q", "r", "s", "t", "v", "x", "z", "w", "y"]

	split_sent = sent.split

	split_sent.map! { |word| 
		if first_letter_in(vowels, word)
			word << "ay"
		elsif first_letter_in(consonants, word)
			point = word.index(/[aeiou]/)
			
			if word.include?("qu") == true
				point = point + 1
			end
			
			word = word[point..word.length] + word[0..point-1] + "ay"

		end
	}

	split_sent.join(" ")

end

def first_letter_in (arr, sent)
	arr.include?(sent[0]) 
end

puts translate("real glove")

