require 'pry'

class CashRegister
	attr_accessor :discount, :total, :item, :price
	def initialize(discount=nil)
		@total = 0
		@discount = discount
		@items = []
		@prices = []
	end

	def add_item(item, price, quantity=1)
		@total += price*quantity
		quantity.times do 
			@items << item
			@prices << price
		end

	end

	def apply_discount
		if @discount != nil
			@total -= (@total * 20/100)
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total -= @prices[-1]
	end


end


