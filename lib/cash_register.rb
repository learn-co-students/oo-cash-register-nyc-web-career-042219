class CashRegister

  NEW = 0

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, count = 1)
    @total += price * count
    count.times{@items << item}
  end

  def apply_discount
    if @discount != 0
      @total = 0.8*@total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
  end
end
