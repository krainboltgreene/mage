require 'mage'

my_computer = Mage::Profile.new

p my_computer.os            #=> "Mac OS X 10.6.8 (10K549) (Darwin 10.8.0, 32-bit)"
p my_computer.cpu           #=> "Intel Core 2 Duo (2.4 GHz, 2 cores)"
p my_computer.ram           #=> "2 GB"