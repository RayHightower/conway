require './conway'
require 'rspec'


describe Conway do
  describe '#new' do
    context 'given a Baord' do
      before :each do
        @conway = Conway.new(Board.new)
      end
      it 'returns a Conway' do
        @conway.should be_a Conway
      end
      
    end
  end
end

describe Board do
  describe '#new' do
  end

  describe '#cells' do
    
  end
end


describe Cell do
  context 'a dead cell' do
    before :each do
      @cell = Cell.new(:dead)
    end

    describe '#alive?' do
      it "returns false" do
        @cell.alive?.should be_a FalseClass
      end
    end

    describe '#number_of_neighbors' do
      it 'counts correct number of living neighbors' do
        @cell.number_of_neighbors.should be_zero
        
      end
    end

    describe '#neighbors' do
      it 'gives the list of neighbors' do
        @cell.neighbors.all? {|n| n.is_a Cell}.should be_a TrueClass
      end

      it 'can take :dead and count the dead neighbors' do
        @cell.n = Cell.new
        @cell.neighbors(:dead)
      end
    end
  end
end
