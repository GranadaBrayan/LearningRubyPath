# Object Pointers and Object Copies
puts 'Object Pointers and Object Copies'
a = [1, 2, 3]
b = a.clone

p a.object_id
p b.object_id
puts

# Argumentos de Splat
puts 'Argumentos de Splat'
def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

p sum(1, 2, 4357, 579, 99, 7)
puts

# any? and all? methods
puts 'any? and all? methods'
nums = [1, 3, 5, 7, 2]
p nums.any? { |num| num.even? }
p nums.all? { |num| num.even? }
puts

# find and detect methods
puts 'find and detect methods'

words = %w[dictionary refrigerator platypus microwave]
p words.find { |word| word.length > 8 }
puts

# uniq method
puts 'uniq method'
numbers = [1, 2, 3, 4, 56, 78, 9, 3, 2, 1]
p numbers
p numbers.uniq
puts

# compact method
puts 'compact method'
arr = [1, nil, 2, 3]
p arr
p arr.compact
puts

# inject and reduce method
puts 'inject and reduce method'
result = [10, 15, 20, 30].inject(0) do |prev, curr|
  puts "The previous value is #{prev}\nThe current value is #{curr}"
  prev + curr
end
puts result
puts

# flatten method
puts 'flatten method'
registrations = [
  %w[Bob Dan Jack],
  %w[Rick Susan Molly],
  %w[Prierce Sean George]
]
p registrations
registrations.flatten!
p registrations
puts

# zip method
puts 'zip method'
names = %w[Bo Moe Joe]
registrations = [true, false, false]

p names.zip(registrations, %w[A B C])
puts

# sample method
puts 'sample method'
numbers = [1, 2, 3, 4, 5, 6, 7]
p numbers.sample(2)
puts

# asterisk multiply array
puts 'asterisk multiply array'
def custom_multiply(array, num)
  result = []
  num.times { array.each { |e| result << e } }
  result
end
p custom_multiply([1, 2, 3], 3)
puts

# union exclude duplicetes
puts 'union exclude duplicetes'
a = [1, 2, 1, 4, 5]
b = [2, 3, 5, 6, 7]
p a
p b
p a | b
puts

# Symmetric difference
puts 'Symmetric difference'
a = [1, 2, 1, 4, 5, 3, 5, 6, 7, 1, 1]
b = [2, 3, 6, 7]
p a
p b
p a - b
puts

# Intersection array
puts 'intersection array'
a = [1, 2, 1, 4, 5]
b = [2, 3, 5, 6, 7]
p a
p b
p a & b
puts
