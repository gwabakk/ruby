class Sequence
	def initialize(startFrom = 0)
		@counter = startFrom
	end
	
	def counter
		@counter
	end
	
	def next
		n = Sequence.new(@counter + 1)
		n
	end
end

class Alternate
	def initialize(first, second)
		@first = first
		@second = second
	end
	
	def next
		puts @first
		Alternate.new(@second, @first)
	end
end
