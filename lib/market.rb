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
      if vendor.inventory.include?(food.capitalize)
        vendor
      end
    end.compact
  end

  def sorted_item_list
    capitalize_items.sort
  end

  def find_items_list
    items = []
    @vendors.each do |vendor|
      items << vendor.inventory.keys
    end
    items.flatten.uniq
  end

  def capitalize_items
    find_items_list.map do |item|
      item.gsub(/\w+/) do |word|
        word.capitalize
      end
    end
  end

end
