class Cell

  attr_accessor :live_neighbors

  def initialize(alive = true)
    @alive = alive
  end

  def step
    if live_neighbors == 2
      Cell.new @alive
    elsif live_neighbors == 3
      Cell.new true
    else
      Cell.new false
    end

  end

  def alive?
    @alive
  end
end
