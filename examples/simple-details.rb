require 'mage'

computer = Mage::Profile.new

puts "Operating System: " + computer.os    # => "Mac OS X 10.6.8"
puts "CPU: " + computer.cpu                # => "Intel Core 2 Duo"
puts "Memory: " + computer.ram             # => "2 GB"
