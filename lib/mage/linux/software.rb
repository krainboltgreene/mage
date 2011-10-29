module Mage
  class Linux
    def system_version
      @data["Description"]
    end

    def kernel_version
      `uname -r`.chomp!
    end

    def boot_drive
      
    end

    def boot_mode
      
    end

    def computer_name
      `hostname`.chomp!
    end

    def user_name
      `logname`.chomp!
    end

    def secure_virtual_memory
      
    end

    def kernel_bit
      machine = `uname -m`.chomp!
      if machine == 'x86_64'
        "64-bit"
      else
        "32-bit"
      end
    end

    def time_since_boot
      system("cat /proc/uptime | awk '{print $1}'")
    end
  end
end