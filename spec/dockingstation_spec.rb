require "dockingstation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it "should be able to dock a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end
