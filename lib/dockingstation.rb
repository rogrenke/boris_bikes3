require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize(bikes = [])
    @bikes = bikes
  end
  def release_bike
    fail "no bikes available" if empty?
    @bikes.pop
  end
  def dock(bike)
    fail "station full" if full?
    @bikes << bike
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length == 20
  end

  private :empty?, :full?
end
