class MyCar
  attr_accessor :color
  attr_reader :year, :speed
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end
  
  def speed_up(number)
    @speed += number
  end
  
  def brake(number)
    @speed -= number
  end
  
  def shut_off
    @speed = 0
  end
  
  def spray_paint(color)
    self.color = color
  end

end

car = MyCar.new(2000, 'red', 'Camry')
p car

puts car.speed

car.speed_up(10)
puts car.speed

car.brake(4)
puts car.speed

car.shut_off
puts car.speed

car.color = 'black'
p car
car.spray_paint('blue')
p car

puts car.year
