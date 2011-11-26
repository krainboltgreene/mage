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
        return self.sp_os_version
      end
      if self.respond_to?('lsbdistdescription')
        self.lsbdistdescription
      end
    end

    def kernel_version
      if self.respond_to?('kernelversion')
        self.kernel + " " + self.kernelversion
      end
    end

    def kernel_bit
      if self.respond_to?('architecture')
        self.architecture
      end
    end

    def processor_name
      if self.respond_to?('sp_cpu_type')
        return self.sp_cpu_type
      end
      if self.respond_to?('processor0')
        idx = self.processor0.rindex('@')
        if idx != nil && idx > 0
          self.processor0[0,idx-2]
        end
      end
    end

    def processor_speed
      if self.respond_to?('sp_current_processor_speed')
        return self.sp_current_processor_speed
      end
      if self.respond_to?('processor0')
        idx = self.processor0.rindex('@')
        if idx != nil && idx > 0
          self.processor0[idx+1]
        else
          self.processor0
        end
      end
    end

    def core_count
      if self.respond_to?('sp_number_processors')
        return self.sp_number_processors
      end
      if self.respond_to?('processorcount')
        self.processorcount
      end
    end

    def total_memory
      if self.respond_to?('memorysize')
        return self.memorysize
      end
      if self.respond_to?('memorytotal')
        self.memorytotal
      end
    end
  end
end