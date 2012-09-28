class Conway

  def initialize(board)
    @board = board
    
    
  end

end

class Board

  attr_accessor :cells
end

class Cell
  attr_accessor :state,
    :n, :ne, :e, :se, :s, :sw, :w, :nw

  def initialize(state = :dead)
    @state = state
  end

  def alive?
    @state != :dead
  end

  def number_of_neighbors
    5
  end

  def neighbors(state=nil)
    
  end
end


class Numeric
  def in?(range)
    range.include? self
  end

  def zero?
    self == 0
  end
end
