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
    @inventory[item] += item_quantity
  end

  def potential_revenue
     @inventory.map do |item, item_quantity|
       @inventory[item]  *  item.price
     end.sum
  end
end
