item_list = []
puts "Hi, my name is Cory. I am a genius.. I will sort any words in a jiffy!"
puts ''
puts "Enter words you would like me to sort."
puts "Press enter on a blank line when finished."

while true
  words = gets.chomp.downcase
  if words.length == 0
    break
  else
    item_list. << words
  end
end

item_list.sort!

puts "Here\'s the sorted list!"
puts [item_list]