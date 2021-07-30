# method
puts 'method'
def introduce_myself(name, age)
  expression = "#{name} is handsome, and his age is #{age}"
  puts expression
end
introduce_myself('Boris', 23)
puts

# method return
puts 'method return'
def addTowNumbers(n1, n2)
  puts "I'm solving your math problem!"
  return n1 + n2
  'this is not shown'
end
p addTowNumbers(2, 4)
puts

# if elsif and nested if
puts 'if elsif else'
def odd_or_even(number)
  if number.is_a? Integer
    if number.odd?
      'That number is odd'
    elsif number.even?
      'That number is even'
    end
  else
    'NAN'
  end
end
number = 3
puts odd_or_even(number)
puts

# if with && and || operador
puts 'if && and || operador'
age = 17
ticket = 'General'
id = true

if age > 15 && age < 18 || age > 20 && age < 25 && ticket == 'General' && id
  puts 'Congratulations, welcome to the show!'
else
  puts "Sorry, you can't enter"
end
puts

# .respond_to?
puts '.respond_to?'
num = 10
if num.respond_to?('length')
  p num.length
elsif num.respond_to?('next')
  p num.next
end
puts

# Ternary Operator
puts 'Ternary Operator'
puts 1 < 2 ? 'Yes, it is' : "No, it's not!"
puts

# Default or Optional Parameters
puts 'Default or Optional Parameters'
def make_phone_call(number, int_code = 1, area_code = 909)
  puts "Calling #{int_code}-#{area_code}-#{number}"
end
make_phone_call(5_555_555)
make_phone_call(5_555_555, 12, 768)
puts
