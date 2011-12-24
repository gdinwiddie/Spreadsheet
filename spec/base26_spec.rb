require "rspec"
require "features/support/spreadsheet_helper"

describe "base26" do

  it "should count from zero" do
    base26(0).should eql 'A'
  end

  it "should convert to alphabetic" do
    base26(25).should eql 'Z'
  end

  it "should handle 3 digits" do
    base26(703).should eql 'AAB'
  end
end