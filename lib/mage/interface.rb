module Mage::Interface
  def os
    "#{system_version} (#{kernal_version}, #{kernel_bit})"
  end

  def cpu
    "#{processor_name} (#{processor_speed}, #{core_count} cores)"
  end

  def ram
    "#{total_memory}"
  end
end
