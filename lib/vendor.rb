class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
    @stock = Hash.new(0)
  end

  def check_stock(item, qty=0)
    @stock[item]
  end

  def stock(item, qty)
    @stock[item] = qty
  end
end
