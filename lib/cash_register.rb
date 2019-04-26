require "pry"
class CashRegister

attr_accessor :total, :discount, :items


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @receipt = []
end

def add_item(title, price, quantity = 1)
  (1..quantity).each {|item| @items.push(title)}
  @total += price * quantity
  @receipt << [title, price]
end

def apply_discount
  if discount > 0
    @total = total - (discount * total / 100)
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @receipt.last
  @total -= @receipt.last[-1]
end

end
