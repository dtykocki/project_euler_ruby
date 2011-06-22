module Euler
   class Problem6
      attr_reader :difference, :sum_of_squares, :square_of_sums

      def initialize
         @sum_of_squares = 0
         @square_of_sums = 0
         @difference = 0
      end

      def sum_of_the_squares(n)
         @sum_of_squares = (1..n).collect { |i| i * i }.inject(0) { |sum, i| sum + i }
      end

      def square_of_the_sums(n)
         sum = (1..n).inject(0) { |sum, i| sum + i } 
         @square_of_sums = sum * sum 
      end

      def calc_difference
         @difference = (@sum_of_squares - @square_of_sums).abs
      end

   end
end
