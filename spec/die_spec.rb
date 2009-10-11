require File.dirname(__FILE__) + '/helper'
require 'rudil/die'

# classes dealing with random numbers are not easily unit-tested.
# this number represents the number of dice-throwing to do until
# the Die is considered "tested enough"
NB_OF_ROLLS = 180
# 180 throws correspond to a 1-(19/20)^180=0.99990 chance of
# throwing a certain number at least once on a twenty sided die

if NB_OF_ROLLS < 1
  raise ScriptError
end

describe Die do
  it "should not want to have less than 1 or more than 120 sides" do
    lambda { Die.new(0) }.should raise_error(ArgumentError)
    lambda { Die.new(121) }.should raise_error(ArgumentError)
  end

  it "should roll an integer" do
    die = Die.new
    die.roll.class.should == Fixnum
  end

  it "should not roll a number smaller than one" do
    die = Die.new
    collection = Array.new(NB_OF_ROLLS).fill { die.roll }
    collection.sort[0].should == 1 
  end

  it "should not roll a number bigger than 6 per default" do
    die = Die.new
    collection = Array.new(NB_OF_ROLLS).fill { die.roll }
    collection.sort[NB_OF_ROLLS - 1].should == 6 
  end

  it "should not roll a number bigger than the number of sides" do
    die = Die.new(20)
    collection = Array.new(NB_OF_ROLLS).fill { die.roll }
    collection.sort[NB_OF_ROLLS - 1].should == 20 
  end

  it "should be thrown once per default" do
    die = Die.new
    die.throw.length.should == 1
  end

  it "should be thrown as often as told" do
    die = Die.new
    die.throw(10).length.should == 10
  end

  it "should not want to be thrown less than once" do
    die = Die.new
    lambda { die.throw(-1) }.should raise_error(ArgumentError)
    lambda { die.throw(0) }.should raise_error(ArgumentError)
  end
  
  it "should return the result after it has been thrown once" do
    die = Die.new()
    die.stub!(:roll).and_return(6)
    throw = die.throw(1)
    throw[0].should == 6
  end

  it "should return the result after it has been thrown any number of times" do
    die = Die.new()
    die.stub!(:roll).and_return(1,2,3,4,5,6)
    throw = die.throw(6)
    throw[0].should == 1
    throw[5].should == 6
  end
end
