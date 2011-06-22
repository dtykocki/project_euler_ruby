require 'test/unit'
require 'shoulda'
require 'turn'
require_relative '../lib/euler/problem6'

class Problem6Test < Test::Unit::TestCase

   def setup
      @prb = Euler::Problem6.new
   end

   should "sum the squares of the first ten natural numbers" do
      expected = 385
      @prb.sum_of_the_squares 10
      assert_equal expected, @prb.sum_of_squares
   end

   should "square the sum of the first ten natural numbers" do
      expected = 3025
      @prb.square_of_the_sums 10
      assert_equal expected, @prb.square_of_sums
   end

   should "find the difference between the sum of squares of the first ten natural numbers and the square of the sum" do
      expected = 2640
      @prb.sum_of_the_squares 10
      @prb.square_of_the_sums 10
      @prb.calc_difference
      assert_equal expected, @prb.difference
   end

   should "sum the squares of the first 100 natural numbers" do
      expected = 338_350
      @prb.sum_of_the_squares 100 
      assert_equal expected, @prb.sum_of_squares
   end

   should "square the sum of the first 100 natural numbers" do
      expected = 25_502_500
      @prb.square_of_the_sums 100
      assert_equal expected, @prb.square_of_sums
   end

   should "find the difference between the sum of squares of the first 100 natural numbers and the square of the sum" do
      expected = 25_164_150
      @prb.sum_of_the_squares 100
      @prb.square_of_the_sums 100
      @prb.calc_difference
      assert_equal expected, @prb.difference
   end
end
