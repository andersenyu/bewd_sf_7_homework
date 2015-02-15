require 'pry'
require 'pry-byebug'

class Person	

	#getter  && setter logic. similar to blueprint for house
	attr_accessor :name, :title, :job

	#instance factory maker
	def initialize(name)
		@name = name #sets instance variable to what was passed in the paramenter
	end

	#instance method. to call it, you do "b.greet"
	def greet
		puts "Hey, my name is #{@name}" #interpolates and puts any instnace (name)
	end
end

binding.pry
bryan = Person.new("Bryan") #creates instance of person, with method new and pass in requried variable