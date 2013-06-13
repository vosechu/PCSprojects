require 'minitest/autorun'
require_relative '../lib/robot.rb'

# When robots come off the factory floor, they have no name.
describe "Robots" do
  before do
    @robo1 = Robot.new
  end
  it 'should be initialized with a random name such as RX837' do
    @robo1.name.must_match(/[A-Z]*[0-9]/)
  end
  it 'should be able to reset to factory settings, and choose a new name' do
    @robo1.reset
    @robo1.name.must_match(/[A-Z]*[0-9]/)
  end

  it 'should have a new name after it is reset' do
    start_name = @robo1.name
    end_name = @robo1.reset
    start_name.wont_equal end_name
  end

  it 'should be able to make two separate robots with different names' do
    robo2 = Robot.new
    @robo1.name.wont_equal robo2.name
  end

  it 'should have a mac address that cannot be changed' do
    r1_mac1 = @robo1.mac_address
    @robo1.reset
    r1_mac2 = @robo1.mac_address
    r1_mac1.must_equal r1_mac2
  end

  it 'should track the number of operations performed on it' do

  end
end

