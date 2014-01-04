def ask question
  puts question
  reply = gets.chomp.downcase
  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    "Please answer \"yes\" or \"no\""
  end
end

puts "Hello and thank you for taking this survey"
puts
ask "Do you like eating burritos?"
ask "Do you like eating tacos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating fajitas?"
ask "Do you like eating sopapillas?"
ask "Do you like drinking horchata?"
puts "Thank You for your time"
puts
puts wets_bed