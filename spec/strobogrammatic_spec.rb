require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Strobogrammatic" do
  it "returns false for any number containing a 2,3,4,5,7" do
      42.strobogrammatic?.should == false
  end
  it "returns true for any number consisting only of 0,1,8" do
      810.strobogrammatic?.should == true
  end
end
