require "docking_station_class"
require "bike_class"
describe DockingStation do
    it { is_expected.to respond_to "release_bike" }
	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike).to eq bike
	end	
 end

