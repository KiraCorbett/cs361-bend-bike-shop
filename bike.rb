# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @cargo = Cargo.new
  end

  def cargo_remaining_capacity
    self.cargo.capacity.remaining_capacity
  end

end

class Rental

  def initialize(bike)
    @bike = bike
  end 

end

class Cargo

  DEFAULT = 10

  attr_accessor :cargo_contents

  def initialize(capacity = DEFAULT)
    @capacity = capacity
    @cargo_contents = []
  end

  def add(item)
    self.cargo_contents << item
  end

  def remove(item)
    self.cargo_contents.remove(item)
  end

  def remaining_capacity
    self.capacity - self.cargo_contents.size
  end
end


