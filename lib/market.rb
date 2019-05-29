class Market
  attr_reader :name,
              :vendors

  def initialize(vendor_name)
    @name = vendor_name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    name = []
    @vendors.each do |vendor|
      name << vendor.name
    end
    name
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor if vendor.inventory.keys.include?(item)
    end
  end

end
