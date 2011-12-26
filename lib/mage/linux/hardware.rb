require 'facter'
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
      Facter.processor0
    end

    def processor_speed
      @data["cpu MHz"]
      #make work
    end

    def processor_count
      #TODO: this return more than one item, how to change to count for processors.
      @data["processor"]
      #Note: This is physical CPUs.
      Facter.physicalprocessorcount
    end

    def core_count
      return 0 unless @data["cpu cores"]
      #Note: This is cores, not physical CPUs.
      Facter.processorcount
    end

    def l2_cache
      @data["cache size"]
      #Todo: Build this, right now facter doesn't have it.
    end

    def total_memory
      @data["MemTotal"]
      #This is physical ram, not SWAP. Who needs SWAP?
      Facter.memorytotal
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
      #Right now this is the uniqueid facter gives us.
      Facter.uniqueid
    end
  end
end