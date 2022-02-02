class MyCar
  attr_accessor :color
  attr_reader :year, :speed, :model
  
  def self.miles_per_gallon(gallons, miles)
    puts "This car gets #{miles / gallons} miles per gallon of gas."
  end
  
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
  
  def to_s
    "This car is a #{color} #{year} #{model}."
  end

end

car = MyCar.new(2000, 'red', 'Camry')
puts car

puts car.speed

car.speed_up(10)
puts car.speed

car.brake(4)
puts car.speed

car.shut_off
puts car.speed

car.color = 'black'
puts car
car.spray_paint('blue')
puts car

puts car.year

puts MyCar.miles_per_gallon(15, 350)
