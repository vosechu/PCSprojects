class Robot
  attr_accessor :name
  attr_reader :mac_address

  def initialize
    reset
    make_mac
  end
  def reset
    @name = ""
    @chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    2.times do
      @name << @chars[rand(@chars.length)]
    end
    3.times do
      @name << rand(10).to_s
    end
    def make_mac
      @mac_address = 10.times { @chars[rand(@chars.length)]}
    end
  end

end