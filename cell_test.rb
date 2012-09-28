require 'minitest/spec'
require 'minitest/autorun'
require './life'

describe "a living cell" do
  (0..1).each do |neighbors|
    it "dies if it has #{neighbors} live neighbors" do
      cell = Cell.new
      cell.live_neighbors = neighbors
      next_cell = cell.step
      refute next_cell.alive?
    end
  end

  (2..3).each do |neighbors|
    it "lives if it has #{neighbors} live neighbors" do
      cell = Cell.new
      cell.live_neighbors = neighbors
      next_cell = cell.step
      assert next_cell.alive?
    end
  end

  (4..8).each do |neighbors|
    it "dies if it has #{neighbors} live neighbors" do
      cell = Cell.new
      cell.live_neighbors = neighbors
      next_cell = cell.step
      refute next_cell.alive?
    end
  end
end

describe "a dead cell" do
  it "comes to life if it has exactly three neighbors" do
    cell = Cell.new false
    cell.live_neighbors = 3
    next_cell = cell.step
    assert next_cell.alive?
  end

  (0..8).each do |neighbors|
    next if neighbors == 3

    it "stays dead with #{neighbors} neighbors" do
      cell = Cell.new false
      cell.live_neighbors = neighbors
      next_cell = cell.step
      refute next_cell.alive?
    end
  end
end
