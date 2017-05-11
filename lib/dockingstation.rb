require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bike, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  def release_bike
    fail "no bikes available" if empty?
    fail "Bike broken" unless @bikes.last.working?
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
    @bikes.length == DEFAULT_CAPACITY
  end

  private :empty?, :full?
end
