require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :prices, :last_transaction_amount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction_amount = price
    #so, the last transaction amount is reset every time a new
    #item is added
    @total += price * quantity
    quantity.times do
      items << title

    end
  end

  def apply_discount
    if discount != 0
      @total = (((100.0 - discount.to_f)/100) * total).to_i
      return "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
  end
end

  def void_last_transaction
    @total -= @last_transaction_amount

  end
end
