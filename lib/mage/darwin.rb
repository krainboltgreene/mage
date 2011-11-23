class Mage::Darwin
  include Mage::Interface

  attr_accessor :data

  def initialize
    @data = YAML.load prepared `system_profiler SPSoftwareDataType SPNetworkDataType`
  end

  def prepared(profile)
    profile.chomp!
    profile.gsub!(/\[\d+\]:/,'-')
  end
end

require_relative 'darwin/hardware'
require_relative 'darwin/software'

