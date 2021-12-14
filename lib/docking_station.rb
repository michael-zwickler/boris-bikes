class DockingStation
  attr_reader :bike
  
  def release_bike()
    fail 'No bikes available in Docking Station' unless @bike
    @bike
  end

  def dock(bike)
  fail 'Docking station limit reached' if @bike
    @bike = bike
  end
end
