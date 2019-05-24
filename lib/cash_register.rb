require "pry"
class CashRegister
attr_accessor :total, :discount



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @items.push([title, price, quantity, @discount])
    @total += price * quantity
  end

  def apply_discount
    if discount > 0
      @total = @total - (@total * discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    item_titles = []
    @items.each do |item|
      item[2].times {item_titles << item[0]}
    end
    item_titles
  end

  def void_last_transaction
    price = @items[-1][1]
    quantity = @items[-1][2]
    @total = @total - (price * quantity)
    @items.pop
  end

end
