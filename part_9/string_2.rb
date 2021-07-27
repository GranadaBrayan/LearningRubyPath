# Split method
puts 'Split method'
sentence = 'Hi, my name is Brayan. There are spaces here!'
p sentence.split('e')
puts

# iterate over string characters
puts 'iterate over string characters'
name = 'kommitter'
letters = name.chars
letters.each { |letter| puts "#{letter} is awesome!" }
puts

# join method
puts 'join method'
names = %w[Joe Moe Bob Loki]
p names
p names.join('!__!')
puts

# index and rindex methods
puts 'index and rindex methods'

fact = "I'm very handsome"
p fact.index('h')
puts

# insert method
puts 'intsert method'
typo = 'GerogWashinton'
p typo
typo.insert(5, 'e ')
p typo
puts

# squeeze method on a string
puts 'squeeze method on a string'
sentence = 'the aardvark jummped   ovver the fence!'
puts sentence
puts sentence.squeeze
puts

# delete method
puts 'delete method'
puts 'Hello kommitter'.delete('m')
puts
