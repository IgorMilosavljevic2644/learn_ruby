class Book
# write your code here
	@title

	attr_accessor :title

	def initialize(title = "")
		@title = title
	end

	def title
		conjuctions = ["for", "and", "nor", "but", "or", "yet", "so"]
		prepositions = ["in", "the", "of", "a", "an"]

		split_title = @title.split

		split_title.map! {|word| 
			conjuctions.include?(word) || prepositions.include?(word) ? 
			(word) : 
			word.capitalize
		}

		split_title[0].capitalize!
		split_title.join(" ")
	end
end