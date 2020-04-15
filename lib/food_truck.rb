class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
    @inventory.default= 0
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, item_quantity)
    stock = Hash.new
    stock[item] = item_quantity
    old_stock = @inventory
    old_stock.merge!(stock) {|key, old_value, new_value| old_value + new_value}
  end
end
