require 'test/unit'
require 'shoulda'
require 'turn'
require_relative '../lib/euler/problem1'

class Problem1Test < Test::Unit::TestCase

	should "return the sum of all the multiples of 3 or 5 below 10" do
		prb = Euler::Problem1.new
		prb.sum_of_multiples_of_3_or_5_below 10
		assert_equal 23, prb.sum
	end

	should "return the sum of all the multiples of 3 or 5 below 1000" do
		prb = Euler::Problem1.new
		prb.sum_of_multiples_of_3_or_5_below 1000
		assert_equal 233168, prb.sum
	end

end
