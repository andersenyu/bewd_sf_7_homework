require 'pry'
require 'pry-byebug'


#Apartment class.
class Apartment
	#getter / setter
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :unit, :rent

	#initialize
	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
	end

	# def rented
	#  	@rent = gets.chomp
	# end	

	def rented
		unit_rented != nil
	end

	def to_s
		"#{@name}"
	end
end
