require 'docking_station'

describe DockingStation do

  subject { DockingStation.new }
  let(:bike) { Bike.new }

  describe 'initialization' do
    it 'starts with 20 bikes in docking station' do
      subject.capacity.times { subject.dock(bike) }
      expect{subject.dock(bike)}.to raise_error("Dock is full")
    end

    it 'initializes with a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  
    it 'has a variable capacity that raises an error when dock is full' do
      bike = Bike.new
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock(bike)}
      expect { docking_station.dock(bike)}.to raise_error("Dock is full")
    end
  end

  describe 'release bike' do
    it { is_expected.to respond_to :release_bike }

    it 'raises error on .release_bike when docking station is empty' do
      expect { subject.release_bike } .to raise_error("No bikes available")
    end

    it 'releases working bikes if there are docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe 'dock bike' do
    it 'docks second bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.dock(bike)).to eq [bike, bike]
    end 
  end

end