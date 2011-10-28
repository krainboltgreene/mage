class Mage::Linux
  include Mage::Interface

  attr_accessor :data

  def initialize
    @data = YAML.load prepared systeminfo
  end

  def prepared(profile)
    profile.chomp!
  end

  def systeminfo
  	`lsb_release -d | sed 's/:\t/\t: /g' && cat /proc/cpuinfo && cat /proc/meminfo`
  end
end

require_relative 'linux/hardware'
require_relative 'linux/software'