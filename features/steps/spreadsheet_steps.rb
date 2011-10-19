require 'spreadsheet'

Given /^the file "([^"]*)"$/ do |filename|
  @spreadsheet_file= File.new(filename)
end

When /^I open the file$/ do
  @spreadsheet= Spreadsheet.open @spreadsheet_file.path
end

Then /^cell "([^"]*)" contains "([^"]*)"$/ do |cell_location, expected_contents|
  cell_row, cell_column = name_to_coordinates(cell_location)
  @spreadsheet.worksheet(0).cell(cell_row, cell_column).should eql expected_contents
end

Then /^cell "([^"]*)" contains (\d+\.\d+)$/ do |cell_location, expected_value|
  cell_row, cell_column = name_to_coordinates(cell_location)
  @spreadsheet.worksheet(0).cell(cell_row, cell_column).value.should eql expected_value.to_f
end

Given /^the spreadsheet gem fixes the "([^"]*)" error$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
end
