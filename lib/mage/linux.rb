class Mage::Linux
  extend Mage::Interface

  attr_accessor :data

  def initialize
    data = YAML.load prepared ``
  end

  def prepared(profile)
    profile.chomp!
  end
end
