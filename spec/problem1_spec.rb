require 'spec_helper'

describe Euler::Problem1 do

  context "for numbers less than 10" do

    before(:each) do
      @problem = Euler::Problem1.new(:upto => 10)
    end

    it "lists the natural numbers" do
      expected = (1..10).to_a
      @problem.numbers.should eq expected
    end

    it "determines if a number is a multiple of 3 or 5"
    it "calculates the sum of the multiples of 3 or 5"
  end

  context "for numbers less than 1000" do

    before(:each) do
      @problem = Euler::Problem1.new(:upto => 1000)
    end

    it "lists the natural numbers" do
      expected = (1..1000).to_a
      @problem.numbers.should eq expected
    end

    it "determines if a number is a multiple of 3 or 5"

    it "calculates the sum of the mutiples of 3 or 5"

  end
end
