#Building Class
class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address)
    @address = address
    @name = name
    @apartments = []
  end

  def view_apartments
    puts "------------#{@name} Apartment List--------------"
    appartments_arr = []
    @apartments.each do |apartment|
      # binding.pry
      is_rented = (apartment.is_occupied? ? "This apartment is rented by #{apartment.renter.name}" : "This apartment is vacant")
      hash = {apt_name: apartment.name, apt_sqft: apartment.sqft, apt_beds: apartment.bedrooms, apt_baths: apartment.bathrooms, rented: is_rented}
      appartments_arr.push(hash)
    end
    return appartments_arr
  end

  def to_s
    "Building #{name} at #{address} has #{@apartments.count} apartments."
  end
end
