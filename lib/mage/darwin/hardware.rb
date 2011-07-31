module Mage
  class Darwin
    def model_name
      @hardware["Model Name"]
    end

    def model_id
      @hardware["Model Name"]
    end

    def processor_name
      @hardware["Processor Name"]
    end

    def processor_speed
      @hardware[""]
    end

    def processor_count
      @hardware["Number Of Processors"]
    end

    def core_count
      @hardware["Total Number Of Cores"]
    end

    def l2_cache
      @hardware["L2 Cache"]
    end

    def memory
      @hardware["Memory"]
    end

    def bus_speed
      @hardware["Bus Speed"]
    end

    def boot_rom
      @hardware["Boot ROM Version"]
    end

    def smc_version
      @hardware["SMC Version (system)"]
    end

    def serial_number
      @hardware["Serial Number (system)"]
    end

    def uuid
      @hardware["Hardware UUID"]
    end
  end
end