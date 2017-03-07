friends=[
  {name: "Tim", occupation: "web developer", city: "Utrecht"},
  {name: "Jasper", occupation:"engineer", city:"London"},
  {name:"Martin", occupation: "logistic manager", city:"Utrecht"},
]

friends.each do |friend|

      puts "#{friend[:name]} lives in #{friend[:city]} and is a #{friend[:occupation]}"
    
  end
