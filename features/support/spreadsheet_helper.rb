$COLUMN_NAMES= ('A'..'Z').to_a + ('AA'..'ZZ').to_a + ('AAA'..'ZZZ').to_a

def base26(decimal) # 0-based
  return $COLUMN_NAMES[decimal]
end

def name_to_coordinates(cell_location)
  /([A-Za-z]+)([0-9]+)/.match(cell_location)
  col= $COLUMN_NAMES.index($1.upcase)
  row= $2.to_i - 1
  return row,col
end