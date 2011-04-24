
class FibonacciCalc
	attr_reader :sequence
	attr_accessor :limit

	def initialize
		@limit = 0
		@sequence = []
	end

	def calc_sequence
		a,b = 0,1
		loop do
			@sequence << a + b
			a,b = b,a+b
			break if b >= @limit
		end
	end

	def sum_even_terms
		sum = @sequence.find_all {|i| i % 2 == 0}.inject(0) { |sum, item| sum + item }
	end
end
