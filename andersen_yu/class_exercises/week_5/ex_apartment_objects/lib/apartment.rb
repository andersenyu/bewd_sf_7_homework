require 'pry'
require 'pry-byebug'

#Apartment class.
class Apartment
	attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

	def initialize(name, sqft, bedrooms, bathrooms)
		@name = name
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
	end
	
	def to_s
		puts "Apartment #{name} has been added"
	end

end
