class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  def self.dollar(amount)
    Money.new(amount, :USD)
  end
  def self.franc(amount)
    Money.new(amount, :CHF)
  end
  def *(multiplier)
    Money.new(@amount * multiplier, @currency)
  end
  def ==(that)
    @amount == that.amount && @currency == that.currency
  end
  def +(adend)
    Sum.new(self, adend)
  end
end

class Bank
  def reduce(sum_obj, currency)
    Money.new(sum_obj.reduce, currency)
  end
end
class Sum
  def initialize(money1, money2)
    @money1 = money1
    @money2 = money2
  end
  def reduce
    @money1.amount + @money2.amount
  end
end

