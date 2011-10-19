require "rspec"
require "features/support/spreadsheet_helper"

describe "coordinate parser" do

  it "should convert cell name to column, row" do
    row,col = name_to_coordinates("A1")
    row.should eql 0
    col.should eql 0
  end

  it "should convert other cells" do
    row,col = name_to_coordinates("Z255")
    [row,col].should eql [254,25]
  end

  it "should work with lower-case letters" do
    row,col = name_to_coordinates("d11")
    [row,col].should eql [10,3]
  end

  it "should handle doubled letters" do
    row,col = name_to_coordinates("Aa2")
    [row,col].should eql [1,26]
  end
end