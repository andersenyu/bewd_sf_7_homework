require 'pry'
require 'pry-byebug'


class Song
	attr_accessor :name, :artist, :style

	def initialize(name)
		@name = name
	end

def fan
	puts "I LOVE #{@name.upcase}"
end

end


song1 = Song.new("For Emma")
song1.artist = "Bon Iver"

puts song1.name
puts song1.artist

song1.fan