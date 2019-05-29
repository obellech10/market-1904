class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item, qty=0)
    @inventory[item]
  end

  def stock(item, qty)
    @inventory[item] += qty
  end
end
