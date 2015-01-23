require 'pry'
require 'pry-byebug'

class Cat
	attr_accessor :name, :age

		def initialize (name, age)
			@name = name
			@age = age

		def meow #instance method
			puts "meow I am #{@name}"
		end	
	end
end

rudy = Cat.new("Rudy", 3)


rudy.meow



class Bad_cat
	attr_accessor :name, :age

		def initialize (name, age)
			@name = name
			@age = age

		def bark #instance method
			puts "bark I am #{@name}"
		end	
	end
end

chester = Bad_cat.new("Chester", 6)

chester.bark #cannot use meow 

#self method
class Cat
	attr_accessor :name, :age

		def initialize (name, age)
			@name = name
			@age = age

		def meow #instance method
			puts "meow I am #{@name}"
		end	

		def self.hi #self refers to class, not particular instance. this can be called before any instance is created
			puts "i have wiskers"
		end
	end
end

rudy = Cat.new("Rudy", 3)

Cat.hi #would have to be used this way

#

class Cat
	attr_accessor :name, :age, :color #if color is attribute accessor but not stated when initialized

		def initialize (name, age) #color is not initialized, its just nill
			@name = name
			@age = age

		def meow #instance method
			puts "meow I am #{@name}"
		end	
	end
end

rudy = Cat.new("Rudy", 3)

rudy.color = 'blue'

rudy.meow