#require 'ruby-debug'
require 'minitest/autorun'
#require 'simplecov'

#SimpleCov.start

require 'mage'

class TestMage < MiniTest::Unit::TestCase
  def setup

  end

  def test_mage_module_exists
    assert(Mage, "The Mage Module doesn't exist")
  end

  def test_mage_darwin_class_exists
    assert(Mage::Darwin, "The Mage::Darwin Class doesn't exist")
  end

  def test_mage_linux_class_exists
    assert(Mage::Linux, "The Mage::Linux Class doesn't exist")
  end

  #def test_mage_windows_class_exists
  #  assert(Mage::Windows, "The Mage::Windows Class doesn't exist")
  #end

  def test_os_classes_have_interface
    assert_send([Mage.build, :os])
  end
end
