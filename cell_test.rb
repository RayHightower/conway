require 'minitest/spec'
require 'minitest/autorun'
require './cell'

describe Cell do

  before do
    @cell = Cell.new
  end

  it "exists" do
    assert @cell
  end

  it "is initially alive" do
    @cell.alive? == true
  end

  it "can tick" do
    assert_equal true, @cell.tick!
  end

  it "knows when it has two living neighbors" do

    # when this situation is the case
    @board = TrumanShow.new([true, true, false, false, false, false, false, false])
    @cell.world = @board

    # this is the expected behavior.
    @cell.number_of_living_neighbors == 2

  end

end
