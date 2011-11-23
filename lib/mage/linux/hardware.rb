module Mage
  class Linux
    def model_name
      @data["model name"]
    end

    def model_id
      @data["model"]
    end

    def processor_name
      @data["model name"]
    end

    def processor_speed
      @data["cpu MHz"]
    end

    def processor_count
      #TODO: this return more than one item, how to change to count for processors.
      @data["processor"]
    end

    def core_count
      return 0 unless @data["cpu cores"]
    end

    def l2_cache
      @data["cache size"]
    end

    def total_memory
      @data["MemTotal"]
    end

    def bus_speed

    end

    def boot_rom

    end

    def smc_version

    end

    def serial_number

    end

    def uuid

    end
  end
end