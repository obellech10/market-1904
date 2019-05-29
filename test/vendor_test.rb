require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/vendor'

class VendorTest < MiniTest::Test

  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_that_it_exists
    assert_instance_of Vendor, @vendor
  end

  def test_attributes
    assert_equal "Rocky Mountain Fresh", @vendor.name
    expected = {}
    assert_equal expected, @vendor.inventory
  end

end
