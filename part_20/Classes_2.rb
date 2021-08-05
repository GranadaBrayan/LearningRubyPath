# private Methods
puts 'private methods'
require_relative 'app_store'

class Gadget
  # attr_writer :password
  attr_reader :production_number, :apps
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  def password=(n_pass)
    @password = n_pass if validate_password(n_pass)
  end

  def to_s
    "Gadget #{production_number} has the username #{username}. It is made from the #{self.class} class and it has the ID #{object_id}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  private

  attr_writer :apps

  def validate_password(n_pass)
    n_pass.is_a?(String) && n_pass.length >= 8 && n_pass =~ /\d/
  end

  def generate_production_number
    start_digits = rand(100..999)
    end_digits = rand(100..999)
    alphabet = ('A'..'Z').to_a
    middle_digits = '2017'
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = Gadget.new('user', 'pasword')
p phone.production_number
puts

# protected methods
puts 'protected methods'

class Car
  def initialize(age, miles)
    base_values = 20_000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_values - age_deduction - miles_deduction
  end

  def compare_care_with(car)
    value > car.value ? 'Your car is better!' : 'Your car is worse!'
  end

  protected

  attr_reader :value
end
civic = Car.new(3, 25_000)
fiat = Car.new(1, 15_000)

p civic.compare_care_with(fiat)
puts

# add validation on setter method
puts 'add validation on setter method'

phone = Gadget.new('rubyfan', 'programing123')
puts phone.password
phone.password = '124Seeonwe-123'
puts phone.password
puts

# Instance methods to instence variables
puts 'Instance methods to instence variables'
class BankAccount
  def initialize
    @amount = 5000
  end

  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private

  def amount
    @amount / 100
  end
end

ba = BankAccount.new
p ba.status
puts

# Structs
puts 'Structs'
g = Gadget.new('Brayan', 'password')
p g.apps

g.install_app(:Chat)
g.install_app(:Twitter)
g.install_app(:Chat)
p g.apps
g.delete_app(:Chat)
g.delete_app(:News)
p g.apps
puts

# monkey patching
puts 'monkey patching'
class Array
  def sum
    total = 0
    each { |element| total += element if element.is_a?(Numeric) }
    total
  end
end

p [1, 'hello', 2, false, 3].sum
puts

class String
  def alphabet_sum
    alphabet = ('a'..'z').to_a
    sum = 0
    downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

puts 'abc'.alphabet_sum
puts 'Brayan Granada'.alphabet_sum
puts

# monkey patching II
puts 'monkey patching II'

class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end
puts Time.now
puts Time.now + 30.minutes
puts Time.now + 30.hours
puts Time.now + 30.days
puts

# monkey patching III
puts 'monkey patching III'

class Book
  def initialize(titel, author, pages)
    @titel = titel
    @author = author
    @pages = pages
  end
end

goosebums = Book.new('Nigth of the Living Dummy', 'R.L. Stine', 100)
# p goosebums
puts

class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page} ..." }
    puts "Done! #{@titel} was a great book!"
  end
end

animal_farm = Book.new('Animal Farm', 'George Orwell', 50)
# p animal_farm
p animal_farm.read
# p goosebums.read
puts
