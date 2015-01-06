
# this class will generate our secret number for us
require 'pry'
require 'pry-byebug'


class SecretNumber

	attr_accessor :number

	def initialize
		@number = 1 + rand(10)
	end

end

# new_num = SecretNumber.new
# puts new_num.number