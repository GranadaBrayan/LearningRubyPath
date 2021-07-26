# Alphabetical ranges
puts 'Alphabetical ranges'
alphabet = 'a'..'z'
p alphabet.first(5)
p alphabet.last(4)
puts

# The .size Method on a Range
puts 'The .size Method on a Range'
numbers = 12..24
numbers_exclusive = 12...24
puts 'range -> 12 to 24'
p "inclusive #{numbers.size}"
p "exclusive #{numbers_exclusive.size}"
puts

# Check if Value Exists in a Range with .include? Method or ===
puts 'Check if Value Exists in a Range with .include? Method or ==='
half_alphabet = 'a'..'m'
puts half_alphabet.include?('f')
p half_alphabet === 'g'
puts

# Generate A Random Number with the rand Method
puts 'Generate A Random Number with the rand Method'
puts rand.round(3)
puts rand(10)
puts rand(10..20)
puts
