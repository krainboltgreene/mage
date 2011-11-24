require 'minitest/autorun'
require 'mage'

class TestMage < MiniTest::Unit::TestCase
  def setup

  end

  def test_mage_module_exists
    assert(Mage, "The Mage Module doesn't exist")
  end

  def test_os_classes_have_interface
    assert_send([Mage.build, :os])
  end
end
