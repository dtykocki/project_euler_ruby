module Euler
	class Problem2
		attr_reader :sum, :sequence
		attr_accessor :limit

		def initialize(limit)
			@limit = limit
			@sequence = []
			@sum = 0
		end

		def find_sequence
			a,b = 0,1
			loop do
				@sequence << a + b
				a,b = b,a+b
				break if b >= @limit
			end
		end

		def sum_even_terms
			@sum = @sequence.select { |i| i % 2 == 0 }.inject(0) { |sum, item| sum + item }	
		end

	end
end
