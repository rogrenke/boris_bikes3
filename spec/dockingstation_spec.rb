require "dockingstation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    station = DockingStation.new
    station.dock(double(:bike))
    my_bike = station.release_bike
    expect(my_bike).to be_working
  end
  it "should be able to dock a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it "should be able to know if there is a bike" do
    expect(subject).to respond_to(:bike)
  end
  it "should raise an error when releasing a bike from an empty docking station" do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error
  end
  it "should raise an error when the station is full and we want to dock a bike" do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { station.dock(double(:bike)) }
    expect{station.dock(double(:bike))}.to raise_error
  end
  it "should be instantiated if we pass it an argument" do
    expect(DockingStation.new(6)).to be_an_instance_of(DockingStation)
  end
  it "should set the capacity to a certain number if we pass it this number as an integer on initialization or to equal default value if we pass none" do
    expect(DockingStation.new(10).capacity).to eq 10
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  it "should raise an error when the user wants to release a bike and the bike is broken" do
    station = DockingStation.new
    my_bike = double(:bike)
    my_bike.report_broken
    station.dock(my_bike)
    expect{station.release_bike}.to raise_error
  end
end
