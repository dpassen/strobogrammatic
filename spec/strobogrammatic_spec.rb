require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Strobogrammatic" do
  it "returns false for any number containing a 2,3,4,5,7" do
      42.strobogrammatic?.should be_false
  end
  it "returns true for any number consisting only of 0,1,8" do
      810.strobogrammatic?.should be_true
  end
  it "returns false for any number containing differing numbers of 6 and 9" do
      669.strobogrammatic?.should be_false
  end
  it "returns false if all pairs of 6 and 9 are not reflected across the pivot point" do
      69096.strobogrammatic?.should be_false
  end
end
