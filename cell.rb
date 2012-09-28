class Cell

  def alive?
    @alive
  end

  def tick!
    true
  end

  # these two methods are what attr_accessor replaces.
  def world
    @world
  end

  def world=(world)
    @world = world
  end

  def number_of_living_neighbors
    new_stuff = @world.select{|neighbor| neighbor}
    new_stuff.count
    
  end

end

class TrumanShow

  def initialize(neighbor_array)

    
  end


end
