module Euler
   class Problem1
      attr_reader :sum

      def initialize
         @sum = 0
      end

      def sum_of_multiples_of_3_or_5_below(n)
         @sum = (1...n).select { |i| i % 3 == 0 || i % 5 == 0 }.inject(0) { |sum, n| sum + n }
      end

   end
end
