require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'
require './lib/event'
require 'pry'

class EventTest < MiniTest::Test
  def setup
    @event = Event.new("South Pearl Street Farmers Market")
  end

  def test_it_exists
    assert_instance_of Event, @event
  end
end
