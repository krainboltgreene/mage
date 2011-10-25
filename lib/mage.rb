require 'yaml'
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

require_relative 'version'
require_relative 'profile'
require_relative 'darwin'
require_relative 'linux'
