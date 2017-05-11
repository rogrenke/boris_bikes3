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
    idx = 0
    while idx < @bikes.length
      if @bikes[-idx].working?
        return @bikes.delete_at(-idx)
      end
      idx += 1
    end
    fail "No working bike available" unless @bikes.last.working?
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
