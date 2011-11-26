require_relative 'system/profile'

class Mage::System
  include Mage::Interface

  def initialize
  	@methods =[]
    Facter.clear
  end

  def load(data_field, kernel)
    if !data_field.nil? && !kernel.nil? && kernel == "Darwin"
     data = Facter::Util::Macosx.profiler_data(data_field) 
  	 data.each do |fact, value|
  	   Facter.add("#{fact}") do
  	     confine :kernel => :darwin
  	     setcode do
  	       value.to_s  
  	     end
  	   end
  	 end
    end
    generate_methods
  end
end