#numbers .class
puts "numbers .class"
p 5.class
p 5555555555555555555555555555555555.class
p 5.3.class
puts

#.odd and .even
puts ".odd and .even"
p 1.odd?
p 1.even?
puts

#Equality and Inequality and => <=
puts "Equality and Inequality and => <="
p 10 == 10
p 10 == 19
p 10 != 11
p "5" == 5
p 5 < 4
p 5 >= 4
puts

#.between, .floor, .ceil, .round, .abs
puts ".between, .floor, .ceil, .round, .abs"
p 100.between?(99,101)
p 1.5.floor
p 1.5.ceil
p 3.1415593.round(4)
p -345.abs
puts

#Asignation
puts "Asignation"
a = 5 # a = 5
a += 1 # a = 6
a -= 2 # a = 4
a *= 4 # a = 16
a /= 2 # a = 8
a **= 2 # a = 64
a %= 2 # a = 0
p a # result 0
puts

#.upto and .downto
puts ".upto and .downto"
5.downto(2) {|i| puts "Count #{i}"}
puts "-"*10
5.upto(8) {|i| puts "Count #{i}"}
puts

#.step
puts ".step"
0.step(30,3){|i| puts i}
