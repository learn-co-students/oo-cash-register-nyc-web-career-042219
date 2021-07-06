class CashRegister
  attr_accessor :total, :last_t
  attr_reader :discount, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title,price,quantity=1)
    self.total += (price * quantity)
    self.last_t = (price * quantity)
    quantity.times {self.items << title}
  end

  def apply_discount
    if @discount != nil
      self.total = self.total.to_f * (1-(self.discount.to_f * 0.01))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    self.total -= self.last_t
  end
end
