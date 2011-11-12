class Mage::Darwin
  include Mage::Interface

  attr_accessor :data

  def initialize
    @data = YAML.load prepared `system_profiler SPSoftwareDataType SPHardwareDataType`
  end

  def prepared(profile)
    profile.chomp!
    #profile.gsub!(/\[\d+\]:/,'-')
  end
end

require_relative 'darwin/hardware'
require_relative 'darwin/software'

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
