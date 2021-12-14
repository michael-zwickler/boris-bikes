class DockingStation
  attr_reader :bike
  
  def release_bike()
    fail 'No bikes available in Docking Station' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
