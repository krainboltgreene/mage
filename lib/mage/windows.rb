module Mage::Windows
  extend Mage::Interface

  attr_accessor :data

  def initialize
    data = YAML.load prepared `systeminfo`
  end

  def prepared(profile)
    profile.chomp!
    profile.gsub!(/\nHotfix.*/,'')
    profile.gsub!(/\d Processor\(s\) Installed./,'')
    profile.gsub!(/\[\d+\]:/,'-')
  end
end

require_relative 'darwin/hardware'
require_relative 'darwin/software'
