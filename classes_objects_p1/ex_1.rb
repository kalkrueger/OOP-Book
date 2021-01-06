class MyCar

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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

  def car_off
    @speed = 0
    puts "The car is now off"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.car_off
lumina.current_speed
