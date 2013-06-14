# require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/money.rb'
# require 'minitest/pride'

describe 'Money' do
  before do
    @my_money = Money.new(100, :USD)
    @my_franc = Money.new(100, :CHF)
  end

  it 'should give me a new money when I call .dollar' do
    Money.dollar(100).must_equal @my_money
  end

  it 'should give me a new franc money when I call .franc' do
    Money.franc(100).must_equal @my_franc
  end

  it 'should tell me what the amount is' do
    @my_money.amount.must_equal 100
  end

  it 'should tell me what the currency is' do
    @my_money.currency.must_equal :USD
  end

  it 'should tell me if one money is like another' do
    new_money = Money.new(100, :USD)
    old_money = Money.new(200, :USD)
    (new_money == @my_money).must_equal true
    (old_money == @my_money).must_equal false
    (@my_franc == @my_money).must_equal false
  end
  it 'should grow'
  it 'should be reduceable'
end

describe 'Bank' do
  before do
    @my_bank = Bank.new
  end
  it 'should reduce, which sums two moneys to a specific currency' do
    reduced_money = @my_bank.reduce((Money.new(10, :USD) + (Money.new(20, :USD))), :USD)
    reduced_money.must_equal(Money.new(30, :USD))
  end
  it 'should allow you to add and return an exchange rate' do
    @my_bank.add_rate(:USD, :CHF, 2)
    @my_bank.rate(:USD, :CHF).must_equal 2
  end
end

describe 'Sum' do
  before do
    @my_sum = Sum.new(100, 50)
  end
  it 'should return a Sum object with two operands (Moneys)' do
  end
  it 'should calculate the exchange for one Money and add returns money object in target currency'
  it 'should return a new Sum object when + called with new addend'
end
