# subclasses
puts 'subclasses'
class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name}, and I'm #{age} years old"
  end
end

brayan = Employee.new('Brayan', 25)
puts brayan.introduce
puts

class Manager < Employee
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss ? I'm the boss!"
  end

  def introduce
    result = super()
    result += " I'm also a manager!"
    # "My name is #{name} and I'm a manager! Woo-hoo!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end
end

# bob = Manager.new('Bob', 40)
# dan = Worker.new('Dan', 34)
# p bob.introduce
# p dan.introduce
# puts dan.is_a?(Employee)
# p bob.yell
# p dan.clock_in('8:30am')
# puts
# sally = Manager.new('Sally', 25)
# p sally.introduce
sally = Manager.new('Sally', 32, 'Senior vice president')
p sally.rank
p sally.name
p sally.age
p sally.introduce
puts
rick = Employee.new('Rick', 54)
p rick.name
p rick.age
p rick.introduce
puts

# super keyword
puts 'super keyword'
class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    'Room Room !'
  end
end

class Firectruck < Car
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " Beep Beep! I'm driving at #{speed} miles per hour"
  end
end

ft = Firectruck.new('Ford', 4)
p ft.drive(45)
puts

# Class variables across Subclasses
puts 'Class variables across Subclasses'

class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def self.counter
    @@thingamajig_counter
  end

  def initialize
    super
    @@thingamajig_counter += 1
  end
end

a = Widget.new
b = Widget.new

puts Widget.counter
puts Product.counter
puts

c = Thingamajig.new
d = Thingamajig.new
e = Thingamajig.new

puts Thingamajig.counter
puts Product.counter
puts

# sigleton
puts 'sigleton'
class Player
  def play_game
    rand(1..100) > 50 ? 'Winner!' : 'Loser!'
  end
end

bob = Player.new
boris = Player.new

def boris.play_game
  'Winner!'
end

p bob.play_game
p boris.play_game
p boris.singleton_methods
puts

# Hash as initialize Arg
puts 'Hash as initialize Arg'

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details)
    defaults = { occupation: 'Banker', hobby: 'Fishing', birthplace: 'kentucky', age: 45 }
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = { occupation: 'Banker', hobby: 'Horror movies', birthplace: 'kentucky' }
senator = Candidate.new('Mr. Wilson', info)
p senator.occupation
p senator.hobby
p senator.name
p senator.age
puts
