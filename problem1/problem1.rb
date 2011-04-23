require 'test/unit'

class TestProblem1 < Test::Unit::TestCase
	def test_multiples_of_three_or_five_below_10
		sum = 0
		(1...10).each do |item|
			if item % 3 == 0 || item % 5 == 0
				sum += item
			end
		end 	
		assert_equal 23, sum
	end

	def test_multiples_of_three_or_five_below_1000
		sum = 0
		(1...1000).each do |item|
			if item % 3 == 0 || item % 5 == 0
				sum += item
			end
		end
		assert_equal 233168, sum
	end
end
