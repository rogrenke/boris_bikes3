require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize(bikes = false)
    @bikes = bikes
  end
  def release_bike
    Bike.new
  end
  def dock(bike)

  end
end
