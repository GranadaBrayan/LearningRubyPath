# yield keyword
puts 'yield keyword'

def pass_control
  yield
  puts 'This is inside the method'
  yield
  puts "Now I'm back inside the method"
end
pass_control { puts "Now I'm inside the block!" }
puts

# procs_1
puts 'procs_1'
cubes = proc { |num| num**3 }

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9]
c = [11, 12, 13, 14]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |num| num.map(&cubes) }

p a_cubes
p b_cubes
p c_cubes
puts

# block given? method
puts 'block given? method'

def pass_control_on_condition
  puts 'Inside the method'
  yield if block_given?
  puts 'Back inside the method'
end
pass_control_on_condition # { puts 'Hello there' }
puts

# Yielding with arguments
puts 'Yielding with arguments'

def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth('Brayan') { |name| puts "#{name} is handsome" }
puts

# custom_each method
puts 'custom_each method'
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = %w[Boris Arnold Melissa]

custom_each(names) do |name|
  puts "The name of #{name} is #{name.length}"
end
puts

# Procs II
puts 'Procs II'

def greeter
  puts "I'm inside the greeter method"
  yield if block_given?
end
phrase = proc do
  puts 'Hi kommitter!'
end
greeter(&phrase)
puts

# Method as proc
puts 'Method as proc'
p [1, 2, 3, 4, 5, 6, 7, 8, 9].select(&:even?)
puts

# methods with proc parameters
puts 'methods with proc parameters'
def talk_about(name, &myprc)
  puts "Let me tell u about #{name}"
  myprc.call(name)
end
good_thing = proc { |name| puts "#{name} is a genius!" }
talk_about('Brayan', &good_thing)
puts

# lamda example
puts 'Lamda example'

to_euros = ->(dollar) { "The conversion is #{dollar * 0.95}" }
to_pesos = ->(dollar) { "The conversion is #{dollar * 20.7}" }
to_rupees = ->(dollar) { "The conversion is #{dollar * 63.13}" }

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end
p convert(600, to_euros)
p convert(600, to_pesos)
p convert(600, to_rupees)
puts
