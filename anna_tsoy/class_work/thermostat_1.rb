require 'pry'
require 'pry-byebug'

class Thermostat

  #Add getter_setter method with attribute temperature here 
  attr_accessor :temperature  

  #instance factory!!!
  def initialize(temperature) #after this, try running the code 
    @temperature = temperature
  end

  #instance method 
  def set_desired_temperature(target_temp) #this is first method to create
    if temperature > target_temp + 5 
      puts "too hot"
    
    elsif temperature < target_temp - 5
      puts "too cold"
    else
      puts "Room conditions are perfect!"
    end
  end
  ####

  #class method  
    def self.detect_temperature(all_temps, target_temp)
      #loop through array, can put binding pry here when empty
      #create an instance ex. reading = Thermostat.new
      #call instance method to detect & change temp =>  set_desired_temperature

      all_temps.each do |temp|      # each piece in array will be referred to as temp 
        reading = Thermostat.new(temp) #creates an instance of Thermostat w/each temperature in array, sets Thermostat to variable "reading", so that you get a number to compare to each bit in array
        reading.set_desired_temperature(target_temp) #this calls the instance method (above) and passes target temp 
        temp
      end   
      #create an instance ex. reading = Thermostat.new
      #call instance method to detect & change temp =>  set_desired_temperature
  end

 private 
  def turn_on_heater(temperature)
    puts "its too cold, turning on heat"
  end

  def turn_off_heater(temperature)
    puts "its too hot, turning on heat"
  end

end


#The temperature is being read externally somewhere, so let's just create an array of those readings 
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22] 

#set by user 
target_temp = 75

#class method called to get this party started!!!
#Thermostat.detect_temperature(all_temps, target_temp)


reading = Thermostat.new(90)
puts "This is my temp: #{reading.temperature}"
#thermostat.set_desired_temperature

reading.set_desired_temperature(target_temp)

Thermostat.detect_temperature(all_temps,target_temp)