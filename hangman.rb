@status = []

def input
  letter = gets.strip.upcase
  if letter =~ /\A[A-Z]\z/
    if @status.include?(letter)
      puts "that's already been used"
      input
    else
      return letter
    end
  else
    puts "Please use a single letter"
    input
  end
end


def disp_letters
  p 
end

def letter_status input_status
  @status << input_status
end

puts "please type a letter"
letter_status input
letter_status input