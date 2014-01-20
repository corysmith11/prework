def word_list
	item_list = []
	while true
  words = gets.chomp.downcase
  if words.length == 0
  	return item_list
  else
  	item_list << words
   end
  end
end

 def sort(item_list)
	return recursive_sort(item_list, [])
end

def recursive_sort(item_list, sort_list)
if item_list.length == 0
	return sort_list
else
little_word = item_list[0].downcase
item_list.each do |w|
if w.downcase < little_word.downcase
	little_word = w
 end
end
if little_word.downcase == item_list[0].downcase
	little_word = item_list[0]
end
sort_list << item_list.slice!(item_list.index(little_word))
    return recursive_sort item_list, sort_list 
  end
end

puts "Hi, my name is Cory. I am a genius.. I will sort any words in a jiffy!"
puts ''
puts "Enter words you would like me to sort."
puts "Press enter on a blank line when finished."
item_list = word_list
sort_list = sort(item_list)

puts "Here\'s the sorted list!"
puts [sort_list]