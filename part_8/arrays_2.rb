# .each method
puts '.each method'
candies = ['Sour patch kids', 'Milky Way', 'Airheads']
candies.each { |i| puts "I love eating #{i}" }
puts

# more practice
puts 'more practice'
fives = [5, 10, 15, 20, 15, 30, 35, 40]
evens = []
odds = []
fives.each { |i| i.even? ? evens << i : odds << i }
p fives
p evens
p odds
puts

# each within each
puts 'each within each'
shirts = %w[Striped Plain_white Plain Band]
ties = ['Polka dot', 'solid color', 'boring']
shirts.each do |shirt|
  ties.each do |tie|
    puts "Option: A: #{shirt} shirt and a #{tie} tie"
  end
end
puts

# the for loop
# puts "the for loop"
# numbers = [3,5,7,9,12,15]
# for i in numbers
#   puts i
# end
# puts

# the each with index
puts 'each with index'
color = %w[Red Blue Green Yellow]
color.each_with_index do |colors, i|
  puts "moving on index number #{i}"
  puts "the current color is #{colors}"
end
puts
arr = [-1, 1, 2, 1, 5, 6, 3]
def print_if(array)
  array.each_with_index { |num, i| puts "The result of multiplying them id #{i * num}" if i > num }
end
print_if(arr)
puts

# the map or collect method
puts 'the map or collect method'

numbers = [1, 2, 3, 4, 5]
p numbers
squares = numbers.map { |i| i**2 }
p squares
puts

# the break keyword
puts 'the break keyword'

prizes = %w[Pyrite Pyrite Gold Pyrite Pyrite]
i = 0
while i < prizes.length
  current = prizes[i]
  if current == 'Gold'
    puts 'Yay! Found gold!'
    break
  else
    puts "#{current} is not gold!"
  end
  i += 1
end
puts

# the nex kwyword
puts 'the next keyword'
numbers = [1, 2, 3, 'hello', 5, 6, 7, []]

numbers.each do |num|
  if num.is_a?(Integer)
    puts "The square of #{num} is #{num**2}"
  else
    next
  end
end
puts

# the reverse method
puts 'the reverse method'
arr = 'a'..'f'
arr = arr.to_a
p arr
p arr.reverse!
puts

# the concat method
puts 'the concat method'
num = [1, 2, 3]
p num
p num.concat([4, 5, 6])
puts

# the max and min method end include?
puts 'the max and min method and include?'
fruits = %w[Apple Banana Kiwi Watermelon]
p fruits.max
p fruits.min
p fruits.include?('Apple')
puts

# the select method
puts 'the select method'
grades = [80, 95, 13, 76, 28, 49]
p grades
matches = grades.select do |num_grad|
  num_grad > 48
end
p matches
puts

# multidimensional array
puts 'multidimensional array'

user = [['Bob', 23, 'male'], ['Ana', 26, 'Female'], ['Victoria', 28, 'female']]
p user[2][0]
puts

# partition method
puts 'partition method'

foods = %w[Steak Vegetables Steak_Burger Kale Tofu]
good, bad = foods.partition { |food| food.include?('Steak') }
p good
p bad
puts

# evens_and_odds
puts 'even_and_odds'
def evens_and_odds(arr)
  arr.partition { |num| num.odd? }
end
p evens_and_odds([4, 8, 15, 16, 23, 42])
