require 'pry'
require 'pry-byebug'


#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address, apartments)
		@building_name = building_name
		@building_address = building_address
		@apartments = {}
	end

	def to_s
		puts "apartments needed"
	end
end

building.apartments[unit] = apartments