# create hash with default value
puts 'create hash with default value'
fruit_price = Hash.new('Not found')
p fruit_price[:banana]
fruit_price.default = 0
p fruit_price[:banana]
puts

# hash to array and vice versa
puts 'hash to array and vice versa'
spice_girls = {
  scary: 'Melanie',
  sporty: 'Chisholm',
  baby: 'Emma',
  posh: 'Victoria'
}

p spice_girls.to_a.flatten
p spice_girls.class
puts

# sort method
puts 'sort'
pokemon = { squirtle: 'Water', bulbassuar: 'Grass', charizard: 'Fire' }
p pokemon
p pokemon.sort
p pokemon.sort_by { |_pok, _type| _type }
puts

# key? and value? method
puts 'key? and value? method'
cars = { toyota: 'camry', chevrolet: 'aveo', ford: 'F-150' }
puts cars.key?(:ford)
puts cars.value?('gtr')
puts

# Hashes as method arguments
puts 'Hashes as method arguments'
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end
puts calculate_total_1(24.99, 0.18, 0.07)
puts
def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end
bill = { tip: 0.18, tax: 0.07, price: 24.99 }
puts calculate_total_2(bill)
puts

# delete method
puts 'delete method'
super_heroes = { spiderman: 'Peter Parker', superman: 'Clark Kent', batman: 'Bruce Wayne' }
p super_heroes
super_heroes.delete(:spiderman)
p super_heroes
puts

# select and reject methods
puts 'select and reject methods'
recipe = { sugar: 5, flour: 10, sal: 2, papper: 4 }
high = recipe.select { |_ingredient, teaspoons| teaspoons >= 5 }
low = recipe.reject { |_ingredient, teaspoons| teaspoons >= 5 }
p recipe
p high
p low
puts

# merge method
puts 'merge method'
market = { garlic: '3 cloves', tomatoes: '5 batches', milk: '10 gallons' }
kitchen = { bread: '2 loaves', yogurt: '20 cans', milk: '100 gallons' }
p market.merge(kitchen)
puts

# Challenger word frequency
puts 'Challenger word frequency'
sentense = 'once upon a time in a land far far far away'

def word_count(string)
  words = string.split(' ')
  count = Hash.new(0)
  words.each { |word| count[word] += 1 }
  count
end
p word_count(sentense)
puts
