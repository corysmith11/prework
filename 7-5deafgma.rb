puts 'Ask Deaf Grandma Anything'
question = gets.chomp
while question != 'BYE'
        if question != question.upcase
        puts 'HUH?! SPEAK UP, SONNY!'
        question = gets.chomp
       else question == question.upcase
              puts 'NO, NOT SINCE ' + Random.new.rand(1930..1950).to_s
        question = gets.chomp
       end
end