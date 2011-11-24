module Mage
  class System

    def generate_methods
      Facter.each do |k,v|
        @methods << k.downcase
        self.metaclass.send(:define_method, k.downcase.to_sym) do
          v.to_s
        end
      end
    end

    def system_version
      if self.respond_to?('sp_os_version')
        self.sp_os_version
      end
    end

    def kernel_version
      if self.respond_to?('sp_kernel_version')
        self.sp_kernel_version
      end
    end

    def kernel_bit
      if self.respond_to?('sp_64bit_kernel_and_kexts')
        "64-bit"
      else
        "32-bit"
      end
    end

    def processor_name
      if self.respond_to?('sp_cpu_type')
        self.sp_cpu_type
      end
    end

    def processor_speed
      if self.respond_to?('sp_current_processor_speed')
        self.sp_current_processor_speed
      end
    end

    def core_count
      if self.respond_to?('sp_number_processors')
        self.sp_number_processors
      end
    end

    def total_memory
      if self.respond_to?('sp_physical_memory')
        self.sp_physical_memory
      end
    end
  end
end