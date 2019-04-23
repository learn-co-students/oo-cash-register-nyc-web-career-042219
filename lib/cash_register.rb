require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :prices
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end
  
  def add_item(item, price, quantity)
    @total
    
  end
  
  
end
