#write your code here
def echo (text)
	text.to_s
end

def shout (text)
	text.upcase.to_s
end

def repeat (text, times = 2)
	text << " #{text}" * (times-1)
end

def start_of_word (word, number)
	word[0..number-1]
end

def first_word (sentence)
	sentence.split[0]
end

def titleize (sentence)
	end_sentence = ""
	little_words = ["and", "the" ,"for", "of", "over"]
	sentence.split.each do |sent|
		unless little_words.include? sent
			sent.to_s.capitalize!
		end

		if end_sentence.length == 0
			end_sentence << sent.to_s.capitalize
		else
			end_sentence << " #{sent}"	
		end
	end 
	end_sentence
end