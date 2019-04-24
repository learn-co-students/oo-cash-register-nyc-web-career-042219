require 'pry'

#   #items
#     returns an array containing all items that have been added
#   #void_last_transaction
#     subtracts the last transaction from the total

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @quantity = quantity
    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end

  def apply_discount
    if discount > 0
      @total *= (100 - discount.to_f)/100
    else
      return "There is no discount to apply."
    end
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @items = []
    @total = 0
  end
end
