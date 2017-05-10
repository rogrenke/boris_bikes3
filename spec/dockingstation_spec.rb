require "dockingstation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    station = DockingStation.new(true)
    bike = station.release_bike
    expect(bike).to be_working
  end
  it "should be able to dock a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it "should be able to know if there is a bike" do
    expect(subject).to respond_to(:bikes)
  end
  it "should raise an error when releasing a bike from an empty docking station" do
    station = DockingStation.new(false)
    expect{station.release_bike}.to raise_error
  end
end
