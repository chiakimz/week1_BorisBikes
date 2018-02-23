require "docking_station_class"
require "bike_class"
describe DockingStation do
    #it { is_expected.to respond_to "release_bike" }
	describe "#release_bike" do	
	  it "releases docked bikes" do
		#bike = Bike.new
		# subject.dock(bike)
		# expect(subject.bike).to eq bike
	      expect { subject.release_bike }.to raise_error "There is no bike in the docking station!"
	      #expect { bike.release_bike }.to eq 20.times { docking_station.dock Bike.new }
	  end
	end      
	describe "#dock(bike)" do
	  it "docks bikes" do   
	    bike = Bike.new 
	    20.times { subject.dock(bike) }
	      expect { subject.dock(bike) }.to raise_error( 'Docking station full')
	  end
	end	
 end
