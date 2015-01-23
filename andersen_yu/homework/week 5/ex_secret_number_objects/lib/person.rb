class Person #person is an object
# this class will likely be simple, and just remember its name
	attr_accessor :player_name

	def initialize(player_name)
	  @player_name = player_name
	end

	def to_s
		@player_name
	end
end
