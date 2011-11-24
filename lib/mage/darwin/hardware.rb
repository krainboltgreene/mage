module Mage
  class Darwin

    def hardware_data
      @data["Hardware"]["Hardware Overview"]
    end

    def generate_hardware
      hardware_data.each do |k,v|
        k = k.gsub(' ', '_').gsub('-','_')
        index = k.rindex('(')
        if index != nil && index > 0
          k = k[0,index-1]
        end
        @methods << k.downcase
        self.metaclass.send(:define_method, k.downcase.to_sym) do
          v.to_s
        end
      end
    end

    def core_count
      if self.respond_to?('total_number_of_cores')
        self.total_number_of_cores
      end
    end

    def total_memory
      if self.respond_to?('memory')
        self.memory
      end
    end
  end
end