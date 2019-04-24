require 'pry'
class CashRegister

  attr_accessor :total, :discount,:items, :last_trans

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {self.items << title}
    @last_trans = price * quantity
  end

  def apply_discount
    if @discount
      @total = @total*(1-(@discount*0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_trans
  end

end
