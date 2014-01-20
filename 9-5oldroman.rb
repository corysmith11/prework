def old_roman num
  number = num
  numeral = String.new

  #how many thousands?
  thousands = num / 1000
  if thousands != 0 then numeral << "M" * thousands end
  num = num % 1000

  # how many five_hundreds?
  five_hundreds = num / 500
  if five_hundreds != 0 then numeral << "D" * five_hundreds end
  num = num % 500

  # how many hundreds?
  hundreds = num / 100
  if hundreds != 0 then numeral << "C" * hundreds end
  num = num % 100
  
  # how many fifties?
  fifties = num / 50
  if fifties != 0 then numeral << "L" * fifties end
  num = num % 50

  # how many tens?
  tens = num / 10
  if tens != 0 then numeral << "X" * tens end
  num = num % 10

  # how many fives?
  fives = num / 5
  if fives != 0 then numeral << "V" * fives end
  num = num % 5

  # how many units?
  ones = num / 1
  if ones != 0 then numeral << "I" * ones end
  num = num % 1

    puts "#{number} is #{numeral} in old style Roman."
end

old_roman 2014