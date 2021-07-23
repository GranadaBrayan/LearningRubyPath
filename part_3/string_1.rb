#multiline string
puts "multiline string"
wrd = <<MLS
  This will be a multi-line string
  when it is output\n\n  Thanks kommit!
MLS
puts wrd
puts

#single and double phrase
puts "single and double phrase"
phrase = "hi kommit"
puts "#{phrase}"
puts '#{phrase}'
puts

#Concatenate String
puts "Concatenate String"
fName = " Brayan "
lName = " Granada "
#p fName
#fName.prepend(lName)
fName << lName
p fName.strip
puts

# .length and .size
puts ".length() and .size()"
a = "Hi kommitter"
b = "good morning"
p a.length
p b.size
puts

#Extract string with bracket
puts "Extract string with bracket"
story = "Extract string with bracket"
p story[4 .. 6] #between 4 and 6 character
p story[4 ... 6] #between 4 and 5 character
p story[4,6] #from character 4, 6 more characters
puts

#overwrite character
puts "overwrite character"
thing = "hi kommitter character"
puts thing
thing[11] = "\n"
puts "-"*20
puts thing
puts "-"*20
thing[4 .. 7] = "OMMI"
puts thing
puts

#case methods
puts "case methods"
wrd = "hElLO"
puts wrd
puts wrd.capitalize
puts wrd.upcase
puts wrd.downcase
puts wrd.swapcase
puts wrd.reverse
puts wrd.include?("o")
puts wrd.downcase.include?("o")
