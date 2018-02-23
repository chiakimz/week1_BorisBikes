
class DockingStation
  #attr_reader :bike	

  def initialize
    @docked_bikes = []
  end

  def release_bike
      fail "There is no bike in the docking station!" unless @docked_bikes.count != 0
      #Bike.new
      @docked_bikes.pop
  end

  def dock(bike)
  	fail "Docking station full" if @docked_bikes.count >= 20
  	@docked_bikes << Bike.new
  end 

end


#bike = Bike.new
#docked_bikes