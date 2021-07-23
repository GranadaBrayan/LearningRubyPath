=begin
All methods of the preview course
=end
#String
puts "String"
p 5.to_s
p "5".to_i
p 5.to_f
puts
#Times
puts "Times"
10.times {|i| p"the number is #{(i+1)*3}"}
puts
#methods
puts "methods"
def exampleMain(hi)
  p "Hi main "+hi
end
exampleMain("kommitter")
puts

nums = 1 .. 10
p nums.last(3)
puts

list = [10,12,43,14,75,34]
matches = list.select do |i|
  i>30
end
p matches.sort
puts

#hash & merge
puts "hash & merge"
first_hash = Hash.new("Not found")
p first_hash[:hi]
puts
market = {garlic: "3 cloves", tomatoes: "5 batches"}
kitchen = {bread: "2 loaves", yogurt: "20 cans"}
p market.merge(kitchen)
puts
def customMerge(hash1, hash2)
  newHash1 = hash1.dup
  hash2.each { |key,value| newHash1[key] = value }
  newHash1
end
p customMerge(market,kitchen)#returns new hash without modifying the original hashes
puts
#Blocks
puts "Blocks"
colors = ["blue","red","green","purple"]
statements = colors.map {|i| "the color is #{i}"}
puts statements
puts
#Object Time
puts "Object Time"
birth = Time.new(1996,12,02)
today = Time.now
puts today.year-birth.year
puts
#Module
puts "Module"
module LengthConversions
  WEBSITE = "https://google.com.co"
  def self.miles_to_feet(miles)
    miles * 5280
  end
  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end
  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end
p LengthConversions::WEBSITE
puts "miles to centimeters  #{LengthConversions.miles_to_centimeters(11)}"
puts
#gets chomp
puts "gets chomp"
p "Hi, what's u name"
name = gets.chomp
p "Great! what's u age"
age = gets.chomp
p "Cool, so u name is #{name} and u're #{age} years old."
puts
