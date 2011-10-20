require 'require_relative' if RUBY_PLATFORM =~ /1\.8/
require 'yaml'

module Mage
  def profile
    case `uname -s`.chomp!
      when 'Darwin' then Darwin.new
      when 'Linux' then Linux.new
      when 'Windows' then Windows.new
    end
  end

  def self.os
    profile.os
  end

  def self.ram
    profile.ram
  end

  def self.cpu
    profile.cpu
  end
end

require_relative 'mage/version'
require_relative 'mage/darwin'
require_relative 'mage/linux'
require_relative 'mage/windows'
