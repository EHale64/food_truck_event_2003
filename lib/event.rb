class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
     @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck if truck.inventory.include?(item)
    end
  end

  def total_inventory
    total_inventory = Hash.new
    @food_trucks.each do |truck|
      truck.inventory.each do |item|
        total_inventory[item] = {"quantity": nil, "food_trucks": []}
      end
    end
    require 'pry': binding.pry
  end
end
