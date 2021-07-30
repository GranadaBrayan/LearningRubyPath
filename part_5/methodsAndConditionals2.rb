# case
puts 'case'
def rate_my_food(food)
  case food
  when 'Steak' then 'Pass the steak sauce!'
  when 'Sushi' then 'Great choice!'
  when 'Tacos', 'Burritos', 'Quesadillas' then 'Cheesy and filling'
  else "I don't know about that food"
  end
end
puts rate_my_food('Tacos')
puts

# while
puts 'while'
i = 1
while i < 10
  p i
  i += 1
end
puts

# until
puts 'until'
i = 1
until i > 9
  puts i
  i += 1
end
puts

# fizzbuzz
puts 'fizzbuzz'
def fizzbuzz(number)
  i = 1
  while i <= number

    if i % 15 == 0
      puts "fizzbuzz for #{i}"
    elsif i % 3 == 0
      puts "fizz for #{i}"
    elsif i % 5 == 0
      puts "buzz for #{i}"
    end
    i += 1
  end
end
fizzbuzz(45)
puts
