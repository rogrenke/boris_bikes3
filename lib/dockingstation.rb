require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize(bike = 0)
    @bike = bike
  end
  def release_bike
    fail "no bikes available" unless @bike != 0
    @bike
  end
  def dock(bike)
    fail "station full" unless @bike == 0
    @bike = bike
  end
end
