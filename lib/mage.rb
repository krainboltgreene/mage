require 'yajl'
require 'require_relative' if RUBY_VERSION =~ /1\.8/

module Mage
  def self.build
    case `uname -s`.chomp
    when 'Darwin'
      Darwin.new
    when 'Linux'
      Linux.new
    end
  end
end

require_relative 'mage/version'
require_relative 'mage/interface'
require_relative 'mage/darwin'
require_relative 'mage/linux'
