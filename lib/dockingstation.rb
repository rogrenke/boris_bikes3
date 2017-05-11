require_relative 'bike'

class DockingStation
  Default_Capacity = 20

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

  def show_default_capacity
    Default_Capacity
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length == Default_Capacity
  end

  private :empty?, :full?
end
