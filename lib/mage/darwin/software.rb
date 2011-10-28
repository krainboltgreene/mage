module Mage
  class Darwin
    def software_data
      @data["Software"]["System Software Overview"]
    end
    def system_version
      software_data["System Version"]
    end

    def kernel_version
      software_data["Kernel Version"]
    end

    def boot_drive
      software_data["Boot Volume"]
    end

    def boot_mode
      software_data["Boot Mode"]
    end

    def computer_name
      software_data["Computer Name"]
    end

    def user_name
      software_data["User Name"]
    end

    def secure_virtual_memory
      software_data["Secure Virtual Memory"]
    end

    def kernel_bit
      if software_data["64-bit Kernel and Extensions"]
        "64-bit"
      else
        "32-bit"
      end
    end

    def time_since_boot
      software_data["Time since boot"]
    end
  end
end