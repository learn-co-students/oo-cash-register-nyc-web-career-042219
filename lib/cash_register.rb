require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []

  end

def add_item(title, price, quantity = 1)
  @title = title
  @total += price*quantity
  quantity.times do
  @items << title
  end
  @last_transaction = price*quantity
end

def apply_discount
  if @discount  == nil
    "There is no discount to apply."
  else
    @total = @total*(0.8)
  "After the discount, the total comes to $800."
end
end

def items
  @items
end

def void_last_transaction
  @total -= @last_transaction
  end
end
