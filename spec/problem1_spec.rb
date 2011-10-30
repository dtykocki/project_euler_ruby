require 'spec_helper'

describe Euler::Problem1 do

  context "for numbers less than 10" do
    before(:each) do
      @problem = Euler::Problem1.new(:upto => 10)
    end

    it "calculates the sum of the multiples of 3 or 5" do
      expected  = 23
      actual    = @problem.run
      actual.should eq expected
    end
  end

  context "for numbers less than 1000" do
    before(:each) do
      @problem = Euler::Problem1.new(:upto => 1000)
    end

    it "calculates the sum of the mutiples of 3 or 5" do
      expected  = 233168
      actual    = @problem.run
      actual.should eq expected
    end

  end
end
