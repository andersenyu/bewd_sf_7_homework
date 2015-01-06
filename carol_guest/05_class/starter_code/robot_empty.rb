#CODE ALONG & LAB WORK 

#Create a Robot Factory
# 

require 'pry'
require 'pry-byebug'
 
#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc., 
 
class Robot
 
  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :home
 
  #instance variables are available through the class. @name is an instance variable 
  def initialize(name, type, home)
    @name = name
    @type = type
    @home = home
  end
 
  #instance method
  def fly
    add_wings_and_take_off
  end
 
  def speak
    if type == "Humanoid protocol droid"
      add_speaks_in_accent
    else
      puts "Beeep Beep Boop"
    end
  end
 
 def to_s
    puts "I am a very special #{type} robot."
 end

 def self.make_robots(number_of_robots)
    robots = number_of_robots.to_i
    robots.times do 
      Robot.random_robot_maker
    end
 end

 def self.random_robot_maker
    names = ["Lindsey","Carol","Kevin","Lana"]
    types = ["tall","short","blue-eyed","happy"]
    homes = ["Vermont","Jesus-land"]

    name = names.sample
    type = types.sample
    home = homes.sample

    r = Robot.new(name,type,home)
    puts "Created #{name} a lovely #{type} robot from #{home}"
    return r
 end

#overrides to_s method that comes out of the box
 def to_s
 end
 
private
 
#usually used within instance && class methods.
def add_wings_and_take_off
  puts "#{name} can fly all the way home to #{home}"
end

def add_speaks_in_accent
  puts "Well hello there! What would you like me to do for you today?"
end

 
end

puts "How many robots shall I make?"
answer = gets.chomp
Robot.make_robots(answer)

# short = Robot.new("R2D2", "Astromech droid", "Tatooine")
# tall = Robot.new("C-3P0", "Humanoid protocol droid", "Affa")
# tall_lady = Robot.new("Orphne", "Humanoid protocol droid", "Affa")

# # binding.pry

# puts short.to_s
# short.fly
# short.speak

# tall.fly
# tall.speak

# tall_lady.speak
 
# Robot.random_robot_maker
# Robot.make_robots(20)
 
# happy_robot = Robot.random_robot_maker
# happy_robot.fly
# happy_robot.laser_master 