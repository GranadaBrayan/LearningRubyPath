# Create An Array with Bracket Syntax
puts 'Create An Array with Bracket Syntax'
name = 'Brayan'
numbers = 3..7
things = [4, true, "hello #{name}", 4.24, numbers.first(3)]
puts things
puts

# new array
puts 'Create An Array with new method'
p Array.new(5, 'Hi')
puts

# Access single array element and fetch
puts 'Access single array element'
fruits = %w[Apple Orange Grape Banana]
p fruits [3]
p fruits.fetch(2)
puts

# Extract Sequential Array Elements
puts 'Extract Sequential Array Elements'
numbers = [1, 2, 3, 4, 5, 6, 7, 10]
p numbers[2, 5]
puts

# Access multiple array elements with the .values_at
puts 'Access multiple array elements with the .values_at'
channels = %w[CBS FOX NBC ESPN UPN]
p channels.values_at(3, 3, 2, -1)
puts

# overwrite array elements
puts 'overwrite array elements'
p fruits
puts 'remplace orange to watermelon'
fruits[1] = 'Watermelon'
fruits[fruits.length] = 'Raspberry'
p fruits
puts

# length and size and count methods
puts 'length and size methods'
things = [1, 2, 2, 2, 4, 4.5, 'hi']
p things
p "length method #{things.length}"
p "size method #{things.size}"
p "count method #{things.count}"
p "count number 2: #{things.count(2)}"
puts

# empty? and nil? methods
puts 'empty? and nil? methods'
puts "[].empty? #{[].empty?}"
puts "[].length == 0 #{[].length == 0}"
letters = %w[a .. k].to_a
characters = letters[100]
p "Character is nil ?: #{characters.nil?}"
puts

# .push and << and .insert methods
puts '.push and << and .insert methods'
locations = %w[House Airport Bar]
p locations
locations << 'Restaurant' << 'Saloon'
p locations
locations.insert(1, 'Room', 'Wash Car')
p locations
puts

# The .pop method
puts 'The .pop method'
arr = [1, 2, 3, 4, 5, 6]
p arr
arr.pop(2)
p arr
puts

# .shift and unshift methods
puts 'shift and unshift methods'
arr = [1, 2, 3, 4, 5, 6]
p arr
arr.shift(2)
p arr
arr.unshift(-2, -1)
p arr
puts

# equality and inequality
puts 'equality and inequality'
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]
p a == b
p a == c
p a == d
puts
