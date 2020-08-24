class DockingStation
  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

  def working_bikes
    @bikes.select(&:working?)
  end
end
