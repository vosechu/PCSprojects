# class creation
class Car
  # syntactic sugar for accessor and mutator
  attr_accessor :color, :make, :serial_number, :passengers

  # initialize an instance of car
  def initialize(color, make)
    @color = color
    @make = make
    @passengers = []
    generate_serial_number
  end

  # instance method
  def generate_serial_number
    @serial_number = ""
    10.times do
      @serial_number << rand(10).to_s
    end
  end

  def stolen
    generate_serial_number
  end

  # class method
  # local variables are mom_car and dad_cars
  def self.reproduce(mom_car, dad_car)
    Car.new(mom_car.color, dad_car.make)
  end

  # using if statements
  def add_passenger(passenger)
    if @passengers.length < 3
      @passengers.push(passenger)
      return @passengers
    end
    unless passenger == "Collette"
      return "Woah! Too many!"
    else
      @passengers.push(passenger)
      return "Sure, we can squeeze in"
    end
  end

end