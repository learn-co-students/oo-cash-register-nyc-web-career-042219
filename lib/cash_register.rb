require "pry"
class CashRegister

  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    self.last = (price * quantity)
    quantity.times { self.items << title }
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (1 - (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last
  end 
end
