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
    @board.cells.must_not be_nil
  end

end
