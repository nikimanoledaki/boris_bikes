require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  
  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      fail "No bikes available"
    elsif broken?
      fail "No bikes available"
    else 
      bikes.pop
    end
  end

  def dock(bike)
    fail "No space available" if full?
      bikes << bike
  end

  def broken?
    bikes[0].broken?
  end
  
  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end