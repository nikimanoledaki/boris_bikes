require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
<<<<<<< HEAD
  
  attr_reader :capacity
=======
  attr_reader :capacity, :bikes

>>>>>>> 60481ac99945399bf0c272e9e1a8278b8b4af9c7

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
<<<<<<< HEAD
=======
    @capacity = DEFAULT_CAPACITY
>>>>>>> 60481ac99945399bf0c272e9e1a8278b8b4af9c7
  end

  def release_bike
    fail "No bikes available" if empty?
      bikes.pop
  end

  def dock(bike)
    fail "Dock is full" if full?
      bikes << bike
  end
<<<<<<< HEAD
  
  private

  attr_reader :bikes
 
=======

  private

>>>>>>> 60481ac99945399bf0c272e9e1a8278b8b4af9c7
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
