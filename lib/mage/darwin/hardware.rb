module Mage
  class Darwin
    def hardware_data
      @data["Hardware"]["Hardware Overview"]
    end
    def model_name
      hardware_data["Model Name"]
    end

    def model_id
      hardware_data["Model Name"]
    end

    def processor_name
      hardware_data["Processor Name"]
    end

    def processor_speed
      hardware_data["Processor Speed"]
    end

    def processor_count
      hardware_data["Number Of Processors"]
    end

    def core_count
      hardware_data["Total Number Of Cores"]
    end

    def l2_cache
      hardware_data["L2 Cache"]
    end

    def total_memory
      hardware_data["Memory"]
    end

    def bus_speed
      hardware_data["Bus Speed"]
    end

    def boot_rom
      hardware_data["Boot ROM Version"]
    end

    def smc_version
      hardware_data["SMC Version (system)"]
    end

    def serial_number
      hardware_data["Serial Number (system)"]
    end

    def uuid
      hardware_data["Hardware UUID"]
    end
  end
end