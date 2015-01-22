#Building Class
class Building
	attr_accessor :name, :address, :apartments

	def initialize(name, address)
		@name = name
		@address = address
		@apartments = {}
	end

	def view_apartments
		@apartments.each do |key,value|
			puts "Apartment#{key}: #{value.name}, Sqft: #{value.sqft}, Bedroom: #{value.bedrooms}, Bathrooms: #{value.bathrooms}"
		end
		#output was {0=>#<Apartment:0x007fc2c2d55d18 @name="24124", @sqft=40000, @bedrooms=2, @bathrooms=1>}
		#I want to change apartment name and take away	
	end

end

