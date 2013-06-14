require 'minitest/autorun'
require_relative '../lib/exam2.rb'

# test driven development

describe "Car" do
  before do
    @car1 = Car.new("black", "pinto")
    @car2 = Car.new("red", "ferrari")
  end

  # using assertions to test properties of object
  it 'should have a color' do
    @car1.color.must_equal "black"
  end

  # instance variables
  it 'should have a make' do
    @car1.make.must_equal "pinto"
  end

  # instance variables and REGEX
  it 'should have a serial number' do
    @car1.serial_number.must_match(/[0-9]{10}/)
  end

  # instance variables
  it 'should have a unique serial number' do
    @car1.serial_number.wont_equal @car2.serial_number
  end

  # calling instance methods
  it 'should get a new serial number when it is stolen' do
    serial_number = @car1.serial_number
    @car1.stolen
    serial_number.wont_equal @car1.serial_number
  end

  # ok.. this gets a little weird,
  # but I needed to demo a class method
  it 'should be able to reproduce' do
    car3 = Car.reproduce(@car1, @car2)
    car3.color.must_equal @car1.color
    car3.make.must_equal @car2.make
  end

  it 'should accept a passenger' do
    @car1.add_passenger("Niel")
    @car1.passengers.length.must_equal 1
  end

  it 'should accept only 3 regular passengers' do
    @car1.add_passenger("Niel")
    @car1.add_passenger("Erica")
    @car1.add_passenger("Chuck")
    @car1.add_passenger("Katie").must_equal("Woah! Too many!")
  end

  it 'should accept 4 passengers if one of them is Collette' do
    @car1.add_passenger("Niel")
    @car1.add_passenger("Erica")
    @car1.add_passenger("Chuck")
    @car1.add_passenger("Collette").must_equal("Sure, we can squeeze in")
  end
end
