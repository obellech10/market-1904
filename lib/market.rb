class Market
  attr_reader :name,
              :vendors
              
  def initialize(vendor_name)
    @name = vendor_name
    @vendors = []
  end
end
