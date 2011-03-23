require 'spec_helper'

class Some

    def initialize initial_value = 0
	@value = initial_value
    end

    def increase num = 1
	@value += num
	
	@value
    end
end

describe Some do
    before(:each) do
	@some = Some.new
    end

    it "should increase value" do
	@some.increase.should == 1
    end
    
    it "should increase value at provided number" do
	@some.increase(5).should == 5
    end
end
