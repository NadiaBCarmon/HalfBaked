class Cookies
	attr_accessor :type, :description, :price

	def initialize(type, description, price)
		@type = type
		@description = description
		@price = price
	end
end

#Cookies#
	@oatmeal = Cookies.new("oatmeal", "oatmeal description", 1.5)
	@pb = Cookies.new("pb", "pb description", 1.5)
	@biscotti = Cookies.new("biscotti", "biscotti description", 1.5)

$cookie = [@oatmeal, @pb, @biscotti]

##--------##

class Muffins
	attr_accessor :type, :description, :price

	def initialize(type, description, price)
		@type = type
		@description = description
		@price = price
	end
end

#Muffins#
	@banana = Muffins.new("banana", "banana description", 2.0)
	@cornbread = Muffins.new("cornbread", "cornbread description", 2.0)
	@blueberry = Muffins.new("blueberry", "blueberry description", 2.0)

$muffin = [@banana, @cornbread, @blueberry]

# ##--------##

class Cakes
	attr_accessor :type, :description, :price

	def initialize(type, description, price)
		@type = type
		@description = description
		@price = price
	end
end

#Cakes#
	@carrot = Cakes.new("carrot", "banana description", 10.50)
	@redvelvet = Cakes.new("red velvet", "red velvet description", 10.50)
	@rum = Cakes.new("rum", "rum description", 10.50)

$cake = [@carrot, @redvelvet, @rum]