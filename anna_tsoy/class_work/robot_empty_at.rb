#CODE ALONG & LAB WORK 

#Create a Robot Factor
# 

require 'pry'
require 'pry-byebug'
 
#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc., 
 
class Robot
 
  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin
 
  #instance variables are available through the class. @name is an instance variable 
  def initialize(name, type, origin)
    @name = name  
    @type = type
    @origin = origin
  end
 
  #instance method
  def fly
   add_wings_and_take_off
  end
 
  #overiding to_s method that comes out of the box
  def to_s
    "My name is #{name}. I'm #{type}. I was created in #{origin}"
  end
  
  def laser_master
    if @type == "Super Android"
      add_laser_training
    else
      puts "I'm an #{type}. I don't have laser skills. Those come with the newer robots"
    end
  end
 
 #class methods call be called like this Robot.make-robots(5)
 def self.make_robots(num_of_robots)
  robots = num_of_robots.to_i #converting the number of robots we want to integer
  robots.times do       #iterating the random_robot_maker method 
    Robot.random_robot_maker
  end
 end

 def self.random_robot_maker
  name = ["Anna", "Simon", "Jason"]
  type = ["Super Robot", "Lame Robot"]
  origin = ["Jupider", "Saturn"]

  name = name.sample #assigning to variable 
  type = type.sample
  origin = origin.sample

  r = Robot.new(name, type, origin) #create robot and pass it name type and origin
  puts "Created robot #{name} of type #{type} and he is from #{origin}"
  return r #last line is always the one that returned. we want to return the object so that its available
 end

 # def to_s
 # end
 
private
 
#usually used within instance && class methods.
def add_wings_and_take_off
  puts "I'm awesome! I'm #{name}, an awesome #{type} with flying skills"
end

def add_laser_training
  puts "I'm SUPER awesome. I'm #{name}, an amazing #{type} with laser fighting skills"
end

 
end

Robot.make_robots(10)


# celeste = Robot.new("Celeste", "Super Android", "Trinidad")
# steve = Robot.new("Steve", "Android", "Sunnyvale")

# puts steve
# puts celeste
# steve.fly

# steve.laser_master
# celeste.laser_master

# Robot.random_robot_maker
# Robot.make_robots(20)
 
# happy_robot = Robot.random_robot_maker
# happy_robot.fly
# happy_robot.laser_master 