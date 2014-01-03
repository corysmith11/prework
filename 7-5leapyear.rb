puts 'Please input a starting year:'
first_year = gets.chomp.to_i
puts 'Please input an ending year'
end_year  = gets.chomp.to_i
puts ''

while first_year <= end_year
  if first_year % 4 == 0
    if first_year % 100 != 0 || year % 400 == 0
      puts first_year
    end
  end
  first_year = first_year + 1
end