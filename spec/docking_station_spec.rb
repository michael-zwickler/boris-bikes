require 'docking_station'

describe DockingStation do
  
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it '#dock docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it '#bike returns docked bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  describe '#release_bike' do
    it 'throws an error' do
      subject = DockingStation.new
      expect {subject.release_bike}.to raise_error 'No bikes available in Docking Station'
    end
  end
end