require 'pry'
require 'pry-byebug'

class Person

	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

#me = Person.new("Carol")
#puts me.name