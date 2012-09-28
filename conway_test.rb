require 'minitest/spec'
require_relative 'conway'
require 'minitest/autorun'

describe Board do

  it "exists" do
    @board = Board.new
    @board.must_be_instance_of Board
  end
  

  it "has cells" do
    @board = Board.new
    @board.cells.wont_be_nil
  end

end

describe Cell do
  
  it "is either dead or alive" do
    @cell = Cell.new
    @cell.wont_be_nil
  end

  it "should be alive if initialized with true" do
    @cell = Cell.new(0,0,true)
    @cell.alive?.must_equal true
  end

  it "should know its position" do
    x_coord = 3
    y_coord = 5
    @cell = Cell.new(x_coord, y_coord)

    @cell.x_coord.must_equal 3
    
  end

  it "should know who it's neighbors are" do
    @cell1 = Cell.new(1, 1)
    @cell2 = Cell.new(1, 2)
    @cell3 = Cell.new(2, 1)
    @board = Board.new([@cell1, @cell2, @cell3])
    @cell1.neighbors.must_be == [@cell2, @cell3]
  end


end
