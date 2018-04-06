def input
  letter = gets.strip.upcase
  if letter =~ /\A[A-Z]\z/
    puts letter
  else
    puts "Please use a single letter"
    input
  end
end
puts "puts a letter"
input