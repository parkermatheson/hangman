starting_sentence = "Our secret sentence"
sentence_array = starting_sentence.split("").map(&:downcase)
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")
not_dead = true
unfinished = true
mistakes = 0

puts "Welcome to hangman"
while not_dead && unfinished
  puts 'Please type a letter'
  letter = gets.strip.downcase
  if final_sentence.include?(letter)
    puts "that's already been used"
  else
    if sentence_array.include? letter
      sentence_array.each_index { |i| final_sentence[i] = letter if sentence_array[i] == letter }
    else 
      puts "That letter is not in the sentence"
      mistakes += 1
    end
    not_dead = false if mistakes >= 6
    unfinished = false if final_sentence.join.casecmp(sentence_array.join).zero?
  end
  hang_display mistakes
  p final_sentence.join
  puts "You lose" if !not_dead
  puts "You win" if !unfinished
end

def hang_display mistake
  if mistake == 0
    puts "           _______________ "
    puts "          |               |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 1
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "          | |             |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 2
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "       ___|_|____         |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |__________|        |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  end