
#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee
  attr_accessor :first_name, :last_name, :phone

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def contact_info
    @phone || 'No contact info provided.'
  end

  def display_name
    "#{@first_name} #{@last_name}"
  end

  def to_s
    "#{display_name}: #{contact_info}"
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee


end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee


end