module Mage
  class Darwin
    def system_version
      @software["System Version"]
    end

    def kernal_version
      @software["Kernel Version"]
    end

    def boot_drive
      @software["Boot Volume"]
    end

    def boot_mode
      @software["Boot Mode"]
    end

    def computer_name
      @software["Computer Name"]
    end

    def user_name
      @software["User Name"]
    end

    def secure_virtual_memory
      @software["Secure Virtual Memory"]
    end

    def kernel_bit
      if @software["64-bit Kernel and Extensions"]
        "64-bit"
      else
        "32-bit"
      end
    end

    def time_since_boot
      @software["Time since boot"]
    end
  end
end