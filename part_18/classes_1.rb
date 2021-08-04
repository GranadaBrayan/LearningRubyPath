# superclass and .ancestors
puts 'superclass and .ancestors'
p 5.class.superclass
p 5.class.ancestors
puts

# The methods method
puts 'The methods method'
array_methods = [].methods.sort
hash_methods = {}.methods.sort

puts hash_methods - array_methods
puts

# create Class
puts 'Create Class'
class Gadget
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..99)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{object_id}"
  end

  attr_accessor :username

  attr_writer :password, :username
end

phone = Gadget.new("User #{rand(1..10)}", 'topsecret')
puts phone.inspect
p phone.instance_variables
puts phone.to_s
puts phone.username
phone.username = 'Admin'
phone.password = 'B3st_T0p-S3cr3t!'
puts phone.inspect
puts
