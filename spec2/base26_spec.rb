require "rspec"
require "spec2/base26"

describe "base26" do
  it "should count from one" do
    base26(1).should eql 'A'
  end

  it "should convert to alphabetic" do
    base26(26).should eql 'Z'
  end

  it "should handle 2 digits" do
    base26(27).should eql 'AA'
  end

  it "should present 2 digits in correct order" do
    base26(30).should eql 'AD'
  end

  it "should handle 3 digits" do
    base26(703).should eql 'AAA'
  end
end