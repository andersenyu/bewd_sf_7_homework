require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent, :unit_rented

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @unit_rented = nil
  end

  def is_occupied?
    if @unit_rented == 'y'
      true
    else
      false
    end
  end

  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end

end


