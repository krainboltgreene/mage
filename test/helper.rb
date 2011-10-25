require 'bundler/setup'
require 'minitest/autorun'
SimpleCov.start

unless Object.const_defined? 'Mage'
  $:.unshift File.expand_path '../../lib', __FILE__
  require 'mage'
end
