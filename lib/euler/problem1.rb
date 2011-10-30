module Euler
  class Problem1

    def initialize(opts)
      @limit  = opts[:upto] 
    end

    def run
      multiples = (1...@limit).find_all { |i| i % 3 == 0 or i % 5 == 0 }
      multiples.inject(0) { |sum, i| sum += i }
    end

  end
end
