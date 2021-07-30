# .start_with? and .end_with?
puts '.start_with? and .end_with?'
phrase = 'The Ruby programming lenguage is amazing'
p phrase
puts "The sentence ends in T ? #{phrase.start_with?('T')}"
puts "The sentence begins in g ? #{phrase.end_with?('g')}"
puts

# include?
puts 'include'
wrd = 'Ruby'
puts "The sentence include #{wrd}: #{phrase.downcase.include?(wrd.downcase)}"
puts

# Regular expressions
puts 'Regular expressions'
puts phrase =~ /R/
puts

# The scan method
puts 'The scan method'
voicemail = 'I can be reached at 555-123-4567 or kommit@gmail.com'
p voicemail.scan(/e/).length
p voicemail.scan(/[Ie]/)
p voicemail.scan(/\d+/)
p voicemail.scan(/\./)
puts

# Wildcard symbol
puts 'Wildcard symbol'
puts phrase.scan(/.am/)
puts phrase.scan(/a..i/)
puts

# RegEx anchors
puts 'RegEx anchors'
poem = '99 bottles of beer of the wall, 99 bottles of beer'
p poem.scan(/er\z/)
puts

# exclude characters
puts 'exclude characters'
sales = 'I abougth 9 apples, 25 bananas, and 4 orange at the store'
puts sales.scan(/[^,\s]/)
puts

# sub and gsub methods
puts 'sub and gsub methods'
puts 'whimper-kdl-fgq'.gsub('-', ' ')
puts
