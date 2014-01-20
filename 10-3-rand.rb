def word_list
	item_list = []
	while true
  words = gets.chomp.downcase
  if words.length == 0
  	return item_list
  else
  	item_list.push(words)
   end
  end
end

 def shuffle(item_list)
	return recursive(item_list, [])
end

def recurs_shuffle(item_list, shuffled_list)
if item_list.length == 0
	return shuffled_list
else
  shuffled_list << item_list.slice!(rand(item_list.length))
return recurs_shuffle item_list, shuffled_list
end
end

puts "Hi, my name is Cory. I am a genius.. I will shuffle any words in a jiffy!"
puts ''
puts "Enter words you would like me to sort."
puts "Press enter on a blank line when finished."
item_list = word_list
shuffled_list = shuffle(item_list)

puts "Here\'s the random words list!"
puts [shuffled_list]