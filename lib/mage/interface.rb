module Mage::Interface
  attr_reader :methods

  def os
    "#{system_version} (#{kernel_version}, #{kernel_bit})"
  end

  def cpu
    "#{processor_name} (#{processor_speed}, #{core_count} cores)"
  end

  def ram
    "#{total_memory}"
  end

  def metaclass
    class << self
      self
    end
  end
end
