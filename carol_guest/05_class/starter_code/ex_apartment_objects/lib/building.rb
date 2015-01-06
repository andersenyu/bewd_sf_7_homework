#Building Class
require 'pry'
require 'pry-byebug'

class Building
	attr_accessor :building_name, :building_address, :apartments, :apt_count

def initialize(building_name, building_address)
	@building_name = building_name
	@building_address = building_address
	@apartments = {}
end

#still need to figure out this section
def view_apartments
	puts "=============== #{building_name} Apartment List================"
	0.upto (apt_count - 1) do |unit|
		puts "Apartment #{apartments[unit].name}"
		puts "Sqft: #{apartments[unit].apt_sqft}" + "Bedrooms: #{apartments[unit].apt_bedrooms}".rjust(15) + "Bathrooms: #{apartments[unit].apt_bathrooms}".rjust(15)
		# binding.pry
		if
			apartments[unit].renter !=nil
			puts "Renter: #{apartments[unit].renter.name}"
		else
			puts "This apartment is vacant."
		end
	end
end

#:apt_bedrooms, :apt_bathrooms, :renter, :rent
# :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

end
