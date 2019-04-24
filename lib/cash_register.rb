
require 'pry'
class CashRegister
  attr_reader :discount
  attr_accessor :total

  def initialize(discount=0)
    @discount=discount
#    binding.pry
    @total=0
    @items=[]
    @lastprice=0
  end
  def add_item(item, price, qty = 1)
    count = 0
    while count < qty
      @items << item
      count += 1
    end
    @lastsum=price*qty
    @total += @lastsum
    last = []

  end
  def apply_discount

    if discount > 0
    #      binding.pry
      @total = @total - @total * discount/100
      outstring="After the discount, the total comes to $#{@total}."
#      binding.pry
    elsif discount == 0
      "There is no discount to apply."
    end

  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @lastsum
  end


end
