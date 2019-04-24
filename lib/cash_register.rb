class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end



   def add_item(title, price, quantity = 1)
       self.total += price * quantity
       quantity.times { @items << title }
       self.last = (price * quantity)
   end


  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end





end
