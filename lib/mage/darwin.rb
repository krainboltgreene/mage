module Mage
  class Darwin
    attr_reader :hardware, :software

    def initialize
      @hardware_data = YAML.load(`system_profiler SPHardwareDataType`.chomp)["Hardware"]["Hardware Overview"]
      @software_data = YAML.load(`system_profiler SPSoftwareDataType`.chomp)["Software"]["System Software Overview"]
    end

    def os
      "#{system_version} (#{kernal_version}, #{kernel_bit})"
    end

    def cpu
      "#{processor_name} (#{processor_speed}, #{core_count} cores)"
    end

    def ram
      "#{total_memory}"
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