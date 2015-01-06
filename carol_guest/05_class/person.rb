require 'pry'
require 'pry-byebug'

class Person
	attr_accessor :name, :title, :address, :age

def initialize(name,age)
	@name = name
	@age = age
end

def greet
	puts "Hi, my name is #{name}"
end

def say_age
	if age > 25
		puts "I am old."
	else
		puts "I am young!"
	end
end

end

carol = Person.new("Carol",29)

# binding.pry

carol.greet
carol.say_age

