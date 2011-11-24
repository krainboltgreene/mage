require 'facter'
require 'require_relative' if RUBY_VERSION =~ /1\.8/

module Mage
  def self.build(data_field=nil, kernel=Facter.value(:kernel))
    s = System.new 
    s.load(data_field, kernel)
    s
  end
end

require_relative 'mage/version'
require_relative 'mage/interface'
require_relative 'mage/system'