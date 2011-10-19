Feature: read various spreadsheets

Scenario: Mac Excel 2011 native format
  Given the file "data/excel_Mac2011.xlsx"
  And the spreadsheet gem fixes the "OLE2 signature is invalid (Ole::Storage::FormatError)" error
  When I open the file
  Then cell "A1" contains "hot"

Scenario: Mac Excel 2011 saving in old format
  Given the file "data/excel_Mac2011_asExcel97-2004.xls"
  When I open the file
  Then cell "A1" contains "hot"

Scenario: Windows Excel 2007 native format
  Given the file "data/excel_Win2007.xlsx"
  And the spreadsheet gem fixes the "OLE2 signature is invalid (Ole::Storage::FormatError)" error
  When I open the file
  Then cell "A1" contains "Some text here…"
