require 'mage'

my_computer = Mage::Profile.new

case my_computer.platform
  when "Darwin"
    p my_computer.machine.time_since_boot.class     #=> Fixnum
    p my_computer.machine.processor_speed           #=> "2.4 GHz"
  when "Windows"
    p my_computer.machine.windows_directory         #=> "C:\Windows"
    p my_computer.machine.product_id                #=> "89578-OEM-7332157-00061"
end