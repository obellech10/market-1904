require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/vendor'
require './lib/market'

class MarketTest < MiniTest::Test

  def setup
    @market = Market.new("South Pearl Street Farmers Market")
  end

  def test_that_it_exists
    assert_instance_of Market, @market
  end

  def test_attributes
    assert_equal "South Pearl Street Farmers Market", @market.name
    assert_equal [], @market.vendors
  end
end
