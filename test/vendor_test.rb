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

  def test_checking_the_stock
    assert_equal 0, @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 30)
    assert_equal 30, @vendor.check_stock("Peaches")
  end

  def test_that_stock_adds_up
    @vendor.stock("Peaches", 30)
    @vendor.stock("Peaches", 25)
    assert_equal 55, @vendor.check_stock("Peaches")
  end
end
