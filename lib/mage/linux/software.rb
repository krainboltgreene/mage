require 'facter'

module Mage
  class Linux
    def system_version
      @data["Description"]
    end

    def kernel_version
      Facter.kernelversion
    end
    
    def boot_drive
      # todo: figure out how to get this in linux. 
    end

    def boot_mode
      # whut.
    end

    def computer_name
      Facter.hostname
    end

    def user_name
      Facter.id
    end

    def secure_virtual_memory
      # todo: ask kurtis what he meant by this
    end

    def kernel_bit
      Facter.architecture
    end
    
    def time_since_boot
      Facter.uptime
      Facter.uptime_days
      Facter.uptime_seconds
      #todo: pick one and do it, until then we'll roll w/this.
    end
  end
end
