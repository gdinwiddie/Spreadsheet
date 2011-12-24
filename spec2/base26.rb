$DIGITS26= ('A'..'Z').to_a

def base26(decimal) # 1-based
  result= ''
  remainder= decimal - 1
  begin
    modulo= remainder % 26
    remainder = (remainder / 26) - 1
    result << $DIGITS26[modulo]
  end while (remainder >= 0)
  result.reverse!
end