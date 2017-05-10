require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize(bikes = [])
    @bikes = bikes
  end
  def release_bike
    fail "no bikes available" unless @bikes.any?
    @bikes.pop
  end
  def dock(bike)
    fail "station full" unless @bikes.length < 20
    @bikes << bike
  end
end