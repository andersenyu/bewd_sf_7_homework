require 'pry'
require 'pry-byebug'

class Thermostat

  #Add getter_setter method with attribute temperature here 
  attr_accessor :temperature

  #instance factory!!!
  def initialize(temperature)
    @temperature = temperature
  end

  #instance method needs to be called on the class that is set by a variable
  def set_desired_temperature(target_temp)
    #the reason why we do not need to get call temperature is because this is an instance method, which calls itself
    if temperature > target_temp + 5 
      turn_off_heater(temperature)
    elsif temperature < target_temp -5
      turn_on_heater(temperature)
    else
      puts "Your home temperature is #{temperature}! It's perfect!"
    end
  end
  ####

  #class method  class methods always has self.
  def self.detect_temperature(all_temps, target_temp) #required parameters
    #loop through array
    #create an instance reading 
    #call instance method to detect and change temperature
    all_temps.each do |detect|
      @themostat_reading = Thermostat.new(detect) #this creates an instance, which can be used to call an instance method
      @themostat_reading.set_desired_temperature(target_temp) #pass instance variable through the instance method
    end

  end

 private 
  def turn_on_heater(temperature)
    puts "It's #{temperature} degrees in here! Burrr... Let's turn on the heater "
  end

  def turn_off_heater(temperature)
    puts "It's #{temperature} degrees in here! Darn it's hot. Let's turn off the heater "
  end

end


#The temperature is being read externally somewhere, so let's just create an array of those readings 
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22] 

#set by user 
target_temp = 75

#to use instance methods
# temp = Thermostat.new(100)
# temp.set_desired_temperature(target_temp)

#class methods have to be called with the Class.the_method
Thermostat.detect_temperature(all_temps, target_temp)










