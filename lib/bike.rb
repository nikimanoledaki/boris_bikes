class Bike

  attr_reader :working, :broken

  def initialize
    @working = true
  end 

  def report_broken
    @working = false
  end

  def working?
    @working
  end

  def broken?
    @working == false
  end
end 