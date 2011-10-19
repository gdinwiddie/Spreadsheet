Feature: Basic access to a spreadsheet

  Background:
    Given the file "data/first_spreadsheet.xls"
    When I open the file

  Scenario: Hello
    Then cell "A1" contains "hello"

  Scenario: column,row order
    Then cell "A2" contains "goodbye"

  Scenario: World
    Then cell "b2" contains "WORLD"

  Scenario: Calculated field
    Then cell "A3" contains 8.0