require 'pry'
require 'pry-byebug'

#this way is shorter and more direct, but does not use initializer or attr accessor
class SecretNumber 
	attr_accessor :number
	def initialize
		@number	= rand(1..10)
	end

	def to_i
		"#{@number}".to_i
	end
end

# new_num = SecretNumber.new
# puts new_num.choose

# puts "the new secret number is: #{new_num.choose}"

# puts "***************"

#using initializer and attra accessor
# class SecretNumber
# 	attr_accessor :selection

# 	def initialize(selection) 
# 		@number = rand(selection)
# 	end

# 	def to_s
# 		"#{@number}"
# 	end

# end


# num = SecNum.new(box)
# puts num