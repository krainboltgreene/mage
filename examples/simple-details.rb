require 'mage'

my_computer = Mage::Profile.new

puts "Operating System: " + my_computer.os    # => "Mac OS X 10.6.8"
puts "CPU: " + my_computer.cpu                # => "Intel Core 2 Duo"
puts "Memory: " + my_computer.ram             # => "2 GB"
