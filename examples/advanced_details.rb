require 'mage'

my_computer = Mage.build 
p my_computer.time_since_boot.class     #=> Fixnum
p my_computer.processor_speed           #=> "2.4 GHz"