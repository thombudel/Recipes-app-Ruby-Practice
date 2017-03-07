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
