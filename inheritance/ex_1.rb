module Four_Wheel_Drive
  def off_road?
    puts "This vehicle can go off road"
  end
end

class Vehicles
  attr_accessor :color
  attr_reader :model, :year
  @@vehicles_added = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@vehicles_added += 1
  end

  def speed_up(up_by)
    @speed += up_by
    puts "You just sped up #{up_by} mph"
  end

  def brake(down_by)
    @speed -= down_by
    puts "You just slowed down #{down_by} mph"
  end

  def current_speed
    puts "You are now going #{@speed} mph"
  end

  def vehicle_off
    @speed = 0
    puts "The car is now off"
  end

  def spray_paint=(new_color)
    self.color = new_color
    puts "You just spray painted your #{@model} #{@color}"
  end

  def self.mpg(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def self.num_of_vehicles
    puts @@vehicles_added
  end
end

class MyCar < Vehicles
  TYPE = 'Car'
end

class MyTruck < Vehicles
  include Four_Wheel_Drive

  TYPE = 'Truck'
end

black_betty = MyTruck.new(2016, 'Black', '4Runner')

black_betty.speed_up(20)
black_betty.current_speed
black_betty.off_road?
puts black_betty.color
black_betty.spray_paint= 'Yellow'
puts black_betty.color
puts black_betty.year
puts black_betty.model
