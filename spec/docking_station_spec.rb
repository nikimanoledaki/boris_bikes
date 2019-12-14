require 'docking_station'

describe DockingStation do 
  
  subject {DockingStation.new}
  let(:bike) {Bike.new}

  describe "Initializtion" do    
    it 'default capacity' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
      expect{subject.dock(bike)}.to raise_error "No space available"
    end
  end 

  describe 'release_bike' do

    it 'releases working bikes' do
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end 

    it { is_expected.to respond_to :release_bike }
    
    it 'release a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raised an error when there are no bikes available' do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe 'dock' do
    it { is_expected.to respond_to :dock }
    it { is_expected.to respond_to(:dock).with(1).argument } 
  
    it 'docks something' do
      expect(subject.dock(bike)).to eq [bike]
    end 
  
    it 'returns docked bikes' do
      subject.dock(bike)
      expect(subject.dock(@bikes)).not_to be_empty
    end 

    it "raised an error when full" do
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error "No space available"
    end
  end

end 