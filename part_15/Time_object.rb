# Time object
puts 'Time object'
p Time.new(1996, 12, 2, 20, 45)
puts

# instance methods on a Time object
puts 'Instance methods on a Time object'
today = Time.now
p today
p today.month
p today.day
p today.year
puts
p today.hour
p today.min
p today.sec
puts
p today.yday
puts

# Predicate methods
puts 'Predicate methods'
birthday = Time.new(1996, 12, 2)
p birthday.monday?
p birthday.dst?
puts

# Add or subtract time by seconds
puts 'Add or subtract time by seconds'
def fin_day_of_year_by_number(number)
  current_date = Time.new(1996, 12, 2)
  one_day = 3600 * 24
  current_date += one_day until current_date.yday == number
  current_date
end
p fin_day_of_year_by_number(350)
puts

# The Comparable Method on a time
puts 'The Comparable Method on a time'
birthday = Time.new(1996, 12, 2)
summer = Time.new(2021, 6, 21)
independence_day = Time.new(2021, 7, 21)
winter = Time.new(2021, 12, 21)
puts birthday < summer
puts independence_day > winter
puts independence_day.between?(birthday, winter)
puts

# Time to objects
summer = Time.new(2021, 6, 21)
puts summer.ctime.to_s
p summer.to_s
puts

# Time to formatted string
puts 'Time to formatted string'
today = Time.now
p today.strftime('%b %d, %y')
p today.strftime('%x')
puts

# parse and strftime
puts 'parse and strftime'
require 'time'
puts Time.strptime('03/04/2020', '%d/%m/%y')
puts
