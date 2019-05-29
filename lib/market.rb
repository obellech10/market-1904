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
    @vendors.find_all do |vendor|
      name << vendor.name
    end
    name
  end

end
