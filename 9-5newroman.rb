def new_roman num
  
  num_stored = num.to_s
  numeral = String.new

#THOUSANDS

  thousands = num / 1000
  if thousands != 0 then numeral << "M" * thousands end
  num = num % 1000

#HUNDREDS

  five_hundreds = num / 500
  num = num % 500
 
  hundreds = num / 100
  num = num % 100

  if five_hundreds == 1 && hundreds == 4

    numeral << "CM"
    
  elsif five_hundreds == 0 && hundreds == 4
    
    numeral << "CD"

  else

    numeral << "D" * five_hundreds
    numeral << "C" * hundreds
    
  end
  
#TENS

  fifties = num / 50
  num = num % 50

  tens = num / 10
  num = num % 10

  if fifties == 1 && tens == 4

    numeral << "XC"
    
  elsif fifties == 0 && tens == 4
    
    numeral << "XL"

  else

    numeral << "L" * fifties
    numeral << "X" * tens
    
  end

#UNITS

  fives = num / 5
  num = num % 5

  ones = num / 1
  num = num % 1

  if fives == 1 && ones == 4

    numeral << "IX"
    
  elsif fives == 0 && ones == 4
    
    numeral << "IV"

  else

    numeral << "V" * fives
    numeral << "I" * ones
    
  end

    puts "#{num_stored} is #{numeral} in modern Roman style."
end

new_roman 2014