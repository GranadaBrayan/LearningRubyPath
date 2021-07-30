# Create hash and extract values
puts 'Create hash and extract values'
nfl_roster = { 'Tom Brandy' => 'new england patriots',
               'Tony Romo' => 'Dallas cowboys',
               'Rob Gronkowski' => 'new England patriots' }

nba_roster = { 'Cleveland Cavaliers' => ['LeBron James', 'kevin Love', 'Kyrie Irving'],
               'Golden State Warriors' => ['Stephen Curry', 'Klay Thompson', 'Kevin Duran'] }

p nfl_roster['Tony Romo']
p nba_roster['Cleveland Cavaliers']
puts

# Symbols as Hash keys
puts 'Symbols as Hash keys'
person = {
  name: 'Brayan',
  age: 24,
  handsome: true,
  langages: %w[Java Ruby]
}

p person[:name]
p person[:langages]
puts

# Convert symbol and String and vice versa
puts 'Convert symbol and String and vice versa'
p :age.to_s
p 'name'.to_sym
puts

# fetch method
puts 'fetch method'
menu = { burger: 3.99, taco: 5.96 }
p menu.fetch(:burger)
p menu.fetch(:salad, 'Not found')
puts

# add a key value pair to hash
puts 'add a key value pair to hash'
menu = { burger: 3.99, taco: 5.96 }
p menu
menu[:sandwich] = 9.99
p menu
menu.store(:steak, 34.43)
p menu
puts

# length and empty methods
puts 'length and empty? methods'
shopping_list = { banana: 5, oranges: 10, carrots: 3, crackers: 15 }
vega_shopping_list = {}
p shopping_list.length
p vega_shopping_list.length
p shopping_list.empty?
p vega_shopping_list.empty?
puts

# each method
puts 'each method'
capitals = { alabama: 'montgomery', alaska: 'Juneau', arizona: 'Phoenix', arkansas: 'little Rock' }

capitals.each { |state, cap| puts "The capital of #{state} is #{cap}!" }
puts

# each key and each value
puts 'each key and each value'
salaries = { director: 100_000, producer: 200_000, ceo: 300_000 }
salaries.each_key { |i| puts "Employee record: --- #{i}" }
puts
salaries.each_value { |salary| puts "The nex employee earns #{salary}." }
puts

# Retrieve Keys or values
puts 'Retrieve Keys or values'
shopping_list = { banana: [5, 6], orange: 10, carrots: 3, crackers: 4 }
p shopping_list.keys
p shopping_list.values
puts
