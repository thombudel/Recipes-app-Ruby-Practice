def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

@num_carrots=10
@num_potatoes=7
@num_onions=3

def generic_recipe_step
  puts "Got it!"
  print_progress_bar
end

def cut_potatoes
  counter=0
  while counter<@num_potatoes
  counter+=1
  puts "Cut potatoe #{counter}"
  print_progress_bar
  end
end
def cut_carrots
  counter=0
  while counter<@num_carrots
  counter+=1
  puts "Cut carrot #{counter}"
  print_progress_bar
  end
end
def cut_onions
  counter=0
  while counter<@num_onions
  counter+=1
  puts "Cut onion #{counter}"
  print_progress_bar
  end
end



ingredients=[
  {name:"carrots",quantity:@num_carrots},
  {name:"potatoes",quantity:@num_potatoes},
  {name:"onions", quantity:@num_onions},
  {name:"salt", quantity:"teaspoon"},
  {name:"milk", quantity:"half a cup"},
]

puts"Let's cook some delicious hutspot!"

print_divider

puts"Please go to the Albert Heijn ASAP and get me: "

ingredients.each do |ingredient|
  puts "#{ingredient[:quantity]} #{ingredient[:name]}"
end

print_progress_bar
print_progress_bar
print_progress_bar

loop do
  puts "That's quick, do you have all the ingredients? (YES or NO) "
  answer=gets.chomp.upcase

    if answer=="YES"
      puts "Great, let's start cooking!"
      break
    elsif answer=="NO"
      puts "OH?! Please go back and get it!"
      print_progress_bar
      print_progress_bar
      print_progress_bar
    else
      puts "Please say Yes or No to me!!"
      print_progress_bar
    end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1} (YES?)?\n(#{step[:description]})"
  answer = gets.chomp.upcase

  answer.upcase == 'YES'
end

steps=[
  {description: "Wash the potatoes" ,action: "generic_recipe_step"},
  {description: "Wash the carrots" ,action: "generic_recipe_step"},
  {description: "Cut the potatoes",action: "cut_potatoes"},
  {description: "Cut the carrots" ,action: "cut_carrots"},
  {description: "Cut the onions",action: "cut_onions"},
  {description: "Throw the carrots, potatoes and onions in a pan with water",action: "generic_recipe_step"},
  {description: "Boil it for 20 minutes",action: "generic_recipe_step"},
  {description: "Put the milk in",action: "generic_recipe_step"},
  {description: "Put the salt in",action: "generic_recipe_step"},
  {description: "Mash the potatoes, carrots and onions",action: "generic_recipe_step"},
]

print_divider
print_divider
print_divider

puts "Please follow the steps below: "

steps.each_with_index do |step, index|
  puts (index + 1).to_s + " #{step[:description]}"
end

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time."
    print_progress_bar
  end

  send(step[:action])
end

print_divider
puts "Eetsmakelijk!"
