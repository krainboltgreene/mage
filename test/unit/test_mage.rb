require 'ruby-debug'
require 'minitest/autorun'
require 'simplecov'

SimpleCov.start

require 'mage'

class TestMage < MiniTest::Unit::TestCase
  def setup

  end

  def test_things_are_true
    assert true
  end
end
