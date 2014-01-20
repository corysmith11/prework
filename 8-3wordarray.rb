puts 'I\'m bored, give me some words and I will sort them:'
words = []
while true
  word = gets.chomp
  if word == ''
    break    
  end
  words.push word
end
puts 'Here ya go, they are sorted:'
puts words.sort