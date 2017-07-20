require 'pry'

class CashRegister

	attr_accessor :total, :discount, :quantity, :price

	@items = []

	def initialize(discount = 0)
		@total = total
		@discount = discount

		@items = []
		@total = 0
	end

	def total
		@total
	end

	def add_item(item, price, quantity = 1)
		@price = (price)*quantity
		@total += @price
		@last_price = price
		# @quantity = quantity
		quantity.times do
			@items << item
		end
	end

	def apply_discount
		@total -= (@total*@discount/100)
		if @discount != 0
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def items
		@items
	end

	def last_item_price
		@last_price
	end

	def void_last_transaction
		@total -= last_item_price
	end

end