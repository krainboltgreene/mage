module Mage
  class Darwin

    def software_data
      @data["Software"]["System Software Overview"]
    end
    
    def generate_software
      software_data.each do |k,v|
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

    def kernel_bit
      if self.respond_to?('64_bit_kernel_and_extensions')
        "64-bit"
      else
        "32-bit"
      end
    end
  end
end