# frozen_string_literal: true

class MyCar
  attr_reader :velocity

  def initialize
    @velocity = 0
  end

  def accelerate(speed)
    if velocity + speed > 260
      @velocity = 260
    else
      @velocity += speed
    end
  end

  def brake(speed)
    if velocity - speed < 0
      @velocity = 0
    else
      @velocity -= speed
    end
  end
end

car = MyCar.new

puts car.velocity

car.accelerate(300)
car.brake(8)
puts car.velocity
