# length conversions
puts 'length conversions'

module LengthConversions
  WEBSITE = 'https://google.com.co'
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
puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts

# square rectangle circle
puts 'square rectangle circle'
module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(5)
puts Rectangle.area(10, 5)
puts Circle.area(3)
puts

# math module
puts 'math module'
puts Math::PI
puts Math.sqrt(29)
puts Math.sinh(3)
puts

class OlympicMedal
  # <,>,>=,<=,<=>, .between?
  include Comparable
  MEDAL_VALUES = { Gold: 3, Silver: 2, Bronze: 1 }
  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

# bronze = OlympicMedal.new('bronze', 5)
# silver = OlympicMedal.new('silver', 10)
# gold = OlympicMedal.new('Gold', 3)

# mixins_part II
puts 'mixins_part II'
module Purchaseable
  def putchase(item)
    "#{item} has been purchased"
  end
end

class BookStore
  include Purchaseable
end

class Supermarket < BookStore
end
baners_and_noble = BookStore.new
p baners_and_noble.putchase('Atlas Shrugged')
p Supermarket.ancestors
puts

# Extend keyword
puts 'Extend keyword'
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end
p Dog.who_am_i
puts
