class CashRegister
  attr_accessor :total, :items, :last_trans
  attr_reader :discount 

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.last_trans = price * quantity 
    quantity.times { self.items << title }
  end

  def apply_discount
    unless discount == 0
      self.total -= total * (discount / 100.0)
      return "After the discount, the total comes to $#{total.to_i}."
    end
    "There is no discount to apply."
  end

  def void_last_transaction
    self.total -= self.last_trans
  end
end

