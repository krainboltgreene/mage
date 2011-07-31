module Mage
  class Darwin
    attr_reader :model_name, :model_identifier, :processor_name, :processor_speed
    attr_reader :cores, :l2, :memory, :bus_speed, :boot_rom, :smc, :serial, :uuid

    SPHardwareData = YAML.load(`system_profiler SPHardwareDataType`.chomp)["Hardware"]["Hardware Overview"]
    SPSoftwareData = YAML.load(`system_profiler SPSoftwareDataType`.chomp)["Software"]["System Software Overview"]


    def initialize
        gather_hardware_data_from SPHardwareData
        gather_software_data_from SPHardwareData
    end

    def gather_hardware_data_from(data)
        @model_name       = SPHardwareData["Model Name"]
        @model_identifier = SPHardwareData["Model Identifier"]
        @processor_name   = SPHardwareData["Processor Name"]
        @processor_speed  = SPHardwareData["Processor Speed"]
        @processors       = SPHardwareData["Number Of Processors"]
        @cores            = SPHardwareData["Total Number Of Cores"]
        @l2               = SPHardwareData["L2 Cache"]
        @memory           = SPHardwareData["Memory"]
        @bus_speed        = SPHardwareData["Bus Speed"]
        @boot_rom         = SPHardwareData["Boot ROM Version"]
        @smc              = SPHardwareData["SMC Version (system)"]
        @serial           = SPHardwareData["Serial Number (system)"]
        @uuid             = SPHardwareData["Hardware UUID"]
    end

    def gather_software_data_from(data)
        @system_version        = SPSoftwareData["System Version"]
        @kernal_version        = SPSoftwareData["Kernel Version"]
        @boot_volume           = SPSoftwareData["Boot Volume"]
        @boot_mode             = SPSoftwareData["Boot Mode"]
        @computer_name         = SPSoftwareData["Computer Name"]
        @user_name             = SPSoftwareData["User Name"]
        @secure_virtual_memory = SPSoftwareData["Secure Virtual Memory"]
        @kernal_bit            = SPSoftwareData["64-bit Kernel and Extensions"] ? "64-bit" : "32-bit"
        @since_boot            = SPSoftwareData["Time since boot"]
    end

    def operating_system
        "#{@system_version} (#{@kernal_version}, #{@kernal_bit})"
    end

    def processor
        "#{@processor_name} (#{@processor_speed}, #{@cores} cores)"
    end
  end
end


# SPNetworkDataType
# SPSoftwareDataType
# SPParallelATADataType
# SPAudioDataType
# SPBluetoothDataType
# SPCardReaderDataType
# SPDiagnosticsDataType
# SPDiscBurningDataType
# SPEthernetDataType
# SPFibreChannelDataType
# SPFireWireDataType
# SPDisplaysDataType
# SPHardwareRAIDDataType
# SPMemoryDataType
# SPPCIDataType
# SPParallelSCSIDataType
# SPPowerDataType
# SPPrintersDataType
# SPSASDataType
# SPSerialATADataType
# SPThunderboltDataType
# SPUSBDataType
# SPAirPortDataType
# SPFirewallDataType
# SPNetworkLocationDataType
# SPModemDataType
# SPNetworkVolumeDataType
# SPWWANDataType
# SPApplicationsDataType
# SPDeveloperToolsDataType
# SPExtensionsDataType
# SPFontsDataType
# SPFrameworksDataType
# SPLogsDataType
# SPManagedClientDataType
# SPPrefPaneDataType
# SPStartupItemDataType
# SPSyncServicesDataType
# SPUniversalAccessDataType