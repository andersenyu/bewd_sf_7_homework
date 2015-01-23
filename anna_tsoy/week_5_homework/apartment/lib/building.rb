require 'pry'
require 'pry-byebug'


#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = [] #fill with apartment objects
	end

	def to_s
		puts "apartments needed"
	end
	def view_apartments
		puts "---------#{@name} Apartment List-----------"
		@apartments.each do |n|

			# if apartment.is_occupied?
			# 	"The apartment is not available"
			# else
			# 	"apartment is vacant"
			# end

			puts n
			if n.rented?
				puts "available"
			else
				puts "all units are rented"
			end
		end

	end
end

# building.apartments[unit] = apartments