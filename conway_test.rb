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
end
