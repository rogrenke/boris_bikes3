require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :report_broken}
  it "records that a bike is broken if a user reports the bike as broken" do
    bike = Bike.new
    bike.report_broken
    expect(bike.working?).to eq false
  end
end
