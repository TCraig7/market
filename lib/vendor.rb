class Vendor

  attr_reader   :name,
                :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(food_name)
    @inventory[food_name.capitalize]
  end

  def stock(food_name, quantity)
    @inventory[food_name.capitalize] += quantity
  end
end
