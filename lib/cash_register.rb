class CashRegister

  attr_accessor :total, :discount, :quantity, :items, :price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity = 1)
    @price = price

    @total += @price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else @total -= (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @price
  end


end
