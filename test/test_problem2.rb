require 'test/unit'
require 'shoulda'
require 'turn'
require_relative '../lib/euler/problem2'

class Problem2Test < Test::Unit::TestCase
	context "problem 2" do
		should "calculate the first ten terms in the Fibonacci sequence" do
			sequence = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
			fib = Euler::Problem2.new(89)
			fib.find_sequence
			assert_equal sequence, fib.sequence	
		end

		should "sum the even numbers of the first ten terms" do
			fib = Euler::Problem2.new(89)
			fib.find_sequence
			fib.sum_even_terms
			assert_equal fib.sum, 44	
		end

		should "sum the even numbers of a sequence whose values do not exceed four million" do
			fib = Euler::Problem2.new(4_000_000)
			fib.find_sequence
			fib.sum_even_terms
			assert_equal fib.sum, 4613732	
		end
	end
end

