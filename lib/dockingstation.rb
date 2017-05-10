require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize(bikes = false)
    @bikes = bikes
  end
  def release_bike
    p @bikes
    fail "no bikes available" unless @bikes
    Bike.new
  end
  def dock(bike)

  end
end
