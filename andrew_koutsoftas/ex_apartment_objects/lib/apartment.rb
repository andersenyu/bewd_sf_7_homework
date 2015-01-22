#Apartment class.
require 'pry'
require 'pry-byebug'

class Apartment
	#getter/setter stuff
	attr_accessor :name, :apt_sqft, :apt_bathrooms, :apt_bedrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bathrooms, apt_bedrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = nil
		@rent = nil
	end

  	def to_s
    	"Apartment: #{@name} \n sqft: #{@apt_sqft} \t Bedrooms: #{@apt_bedrooms} \t Bathrooms: #{@apt_bathrooms}"
  	end
	
	#initialize
end
