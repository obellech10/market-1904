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
end
