class CashRegister
  attr_accessor :total, :discount, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
      @item << title
      i += 1
      end
    else
      @item << title
    end
    @total += price * quantity
    @total
  end

  def apply_discount()
    if discount > 0
    @discount = discount/100.to_f
    @total = @total - (@total * @discount)
    return "After the discount, the total comes to $#{total.to_i}."
    end
    "There is no discount to apply."
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= total
  end

end
