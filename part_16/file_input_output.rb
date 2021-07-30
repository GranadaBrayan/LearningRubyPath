# Read from a text file
puts 'Read from a text file'

# File.open('file.txt').each do |line|
#   puts line
# end
if File.exist?('read_file.txt')
  lines = File.readlines('read_file.txt')
  puts lines
end
puts

# write file
puts 'write file'
File.open('write_file.txt', 'a') { |file| file.write "Hi kommitter !\n" }
puts

# rename and delete file
if File.exist?('write_file.txt')
  puts 'press enter to rename write_file.txt to other_file.txt'
  gets.chomp
  File.rename('write_file.txt', 'other_file.txt')
  puts 'press enter to delete other_file.txt'
  gets.chomp
  File.delete('other_file.txt')
  puts 'other_file.txt deleted, Bye'
end
puts

# load and require
puts 'load and require'
load './end.rb' if File.exist?('end.rb')
require './end'
require_relative 'a/b/epilogue'
puts
