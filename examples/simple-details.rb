require 'mage'

computer = Mage::Profile.new

computer.operating_system[:version]   # => "Mac OS X 10.6.8"
computer.ram[:total]                  # => "2 GB"
computer.cpu[:name]                   # => "Intel Core 2 Duo"