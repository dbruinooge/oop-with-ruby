module Loadable
  def add_load(number)
    @load += number
  end
  
  def remove_load(number)
    @load -= number
  end
  
  def display_load
    puts "This vehicle is loaded with #{@load} units."
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :speed, :model
  
  @@number_of_vehicles = 0

  def self.display_number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles."
  end
  
  def self.miles_per_gallon(gallons, miles)
    puts "This vehicle gets #{miles / gallons} miles per gallon of gas."
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
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

  private 
  
  def age
    current_year = Time.new.year
    current_year - year
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "This car is a #{color} #{year} #{model}."
  end
  
  def display_age
    puts "This car is #{age} years old."
  end
end

class MyTruck < Vehicle
  include Loadable
  
  NUMBER_OF_DOORS = 2
  
  def initialize(year, color, model)
    super
    @load = 0
  end
  
  def to_s
    "This truck is a #{color} #{year} #{model}."
  end
  
  def display_age
    puts "This truck is #{age} years old."
  end
end

Vehicle.display_number_of_vehicles

car = MyCar.new(2000, 'red', 'Camry')
puts car

truck = MyTruck.new(1990, 'blue', 'Tacoma')
puts truck

truck.display_load
truck.add_load(10)
truck.display_load
truck.remove_load(2)
truck.display_load

Vehicle.display_number_of_vehicles

puts MyCar.miles_per_gallon(15, 350)

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

car.display_age
truck.display_age
