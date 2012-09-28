class Board

  def initialize(live_cells=nil)

    @live_cells ||= live_cells
    
  end

  def cells
    @cells ||= Array.new
  end

end

class Cell
  attr_reader :x_coord, :y_coord
  def initialize(x_coord=nil, y_coord=nil, state=nil)
    @x_coord, @y_coord, @state = x_coord, y_coord, state
    
  end

  def alive?
    @state
    
  end

  def neighbors
    @neighbors
  end

  def remove_neighbor(other)

  end

  def add_neighbor(other)

  end

end
