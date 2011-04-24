require File.dirname(__FILE__) + '/problem2'

# Creating some overkill tests for the sake of learning rspec

describe 'Fibonacci calc' do

	before(:each) do
		@calc = FibonacciCalc.new
	end

	it 'should initialize variables' do
		@calc.sequence.should be_empty
	end

	it 'should calculate the first ten terms in the Fibonacci sequence' do
		terms = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
		@calc.limit = 89
		@calc.calc_sequence
		@calc.sequence.should == terms
	end

	it 'should sum the even numbers of the first ten terms' do
		@calc.limit = 89
		@calc.calc_sequence
		@calc.sum_even_terms.should == 44
	end

	it 'should sum the even numbers of the Fibonacci sequence whose values do not exceed four million' do
		@calc.limit = 4000000
		@calc.calc_sequence
		@calc.sum_even_terms.should == 4613732
	end

end
