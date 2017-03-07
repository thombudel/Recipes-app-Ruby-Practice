

loop do
  puts "Do you have all the ingredients you need? (Y/N) "
  answer=gets.chomp.upcase
  if answer == "N"
    puts "Please go shopping!"
  elsif answer == "Y"
    puts "Lets start"
    break
  else
    puts "This is no valid answer"
  end
end
