#Building Class
class Building
	attr_accessor :name, :address, :apartments

	def initialize(name, address)
		@name = name
		@address = address
		@apartments = []
	end

	def view_apartments
		puts "-----------#{@name} Apartment List-----------"
		puts "Building #{name} at the address of: #{address}, has #{@apartments.count} units.\n \n"
		@apartments.each do |apartment|
		puts apartment
		puts (apartment.is_occupied? ? apartment.renter : "This apartment is available.")
	end
end

 def to_s
    "Building #{name} at #{address} has #{@apartments.count} apartments."
  end
end


