require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/vendor'
require './lib/market'

class MarketTest < MiniTest::Test

  def setup
    @market = Market.new("South Pearl Street Farmers Market")
    @vendor_1 = Vendor.new("Rocky Mountain Fresh")
    @vendor_1.stock("Peaches", 35)
    @vendor_1.stock("Tomatoes", 7)
    @vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor_2.stock("Banana Nice Cream", 50)
    @vendor_2.stock("Peach-Raspberry Nice Cream", 25)
    @vendor_3 = Vendor.new("Palisade Peach Shack")
    @vendor_3.stock("Peaches", 65)
  end

  def test_that_it_exists
    assert_instance_of Market, @market
  end

  def test_attributes
    assert_equal "South Pearl Street Farmers Market", @market.name
    assert_equal [], @market.vendors
  end

  def test_market_can_add_vendors
    @market.add_vendor(@vendor_1)
    @market.add_vendor(@vendor_2)
    @market.add_vendor(@vendor_3)

    assert_equal [@vendor_1, @vendor_2, @vendor_3], @market.vendors 
  end

end
