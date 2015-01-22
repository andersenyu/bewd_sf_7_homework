require 'pry'
require 'pry-byebug'

class Cat
	attr_accessor :name, :age #attributes

	#create constructor by using initialize. Creating state of that object
	def initialize(name, age)
		@name = name.capitalize
		@age = age
	end

	def meow
		puts "#{name}, a #{age} year old cat, meows!"
	end

end

ruby = Cat.new("ruby", 3)
ruby.meow

