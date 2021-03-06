class Market

  attr_reader   :name,
                :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(food)
    @vendors.map do |vendor|
      if vendor.inventory.include?(food)
        vendor
      end
    end.compact
  end

  def sorted_item_list
    items = []
    @vendors.each do |vendor|
      items << vendor.inventory.keys
    end
    items.flatten.uniq.sort
  end

  def total_inventory
    hash = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.each do |item, quantity|
        hash[item] += quantity
      end
    end
    hash
  end

  def sell(food, quantity)
    require "pry"; binding.pry
    return if quantity > total_inventory[food]
    return if total_inventory.keys.include?(food)
    
    end
  end

end
