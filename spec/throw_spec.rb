require 'lib/throw.rb'

describe Throw do
  it "should be pretty when casted into string" do
    throw = Throw.new [1,2,3,4,5,6]
    throw.to_s.should == "[1, 2, 3, 4, 5, 6]"
  end

  it "should return its lowest roll" do
    throw = Throw.new []
    throw.lowest.should == nil
    throw = Throw.new [3]
    throw.lowest.should == 3
    throw = Throw.new [2,5,1,6]
    throw.lowest.should == 1
  end

  it "should return its highest roll" do
    throw = Throw.new []
    throw.highest.should == nil
    throw = Throw.new [3]
    throw.highest.should == 3
    throw = Throw.new [2,5,1,6]
    throw.highest.should == 6
  end

  it "should return its mean" do
    throw = Throw.new []
    throw.mean.should == nil
    throw = Throw.new [1,2,3]
    throw.mean.should == 2.0
    throw = Throw.new [1,2,3,4]
    throw.mean.should == 2.5
  end

  it "should return number of rolls above a certain value" do
    throw = Throw.new [1,2,3,4,5,6]
    throw.above(3).should == 3
  end

  it "should return number of rolls equal or below a value" do
    throw = Throw.new [1,2,3,4,5,6]
    throw.eq_or_above(3).should == 4
  end

  it "should return number of rolls below a certain value" do
    throw = Throw.new [1,2,3,4,5,6]
    throw.below(3).should == 2
  end

  it "should return number of rolls equal or above a value" do
    throw = Throw.new [1,2,3,4,5,6]
    throw.eq_or_below(3).should == 3
  end
end
