# Fíjate en las siguientes clases, trata de relacionarlas y crea los métodos para 
# hacer pasar el driver code. 

# Pon antención en el método que te pedimos en la clase 'Vehicle' el 
# cual hará uso de la "Self keyword" que vimos anteriormente.

class Vehicle


attr_accessor :number_of_wheels, :color, :has_motor, :tank_size,
              :refuel, :number_of_gears, :age

 
 def age!
  
 end


  def what_am_i?
   self.class
  end
end

class Motorized < Vehicle


end

class Motorbike < Motorized
end

class Car < Motorized
end

class Bicycle < Vehicle 

def initialize(age)
  @age = age
end

end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]



vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end