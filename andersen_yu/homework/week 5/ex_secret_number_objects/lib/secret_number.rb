class SecretNumber
# this class will generate our secret number for us
	attr_accessor :hidden_value

	def generate_num
		num = Array(1..10)
		@hidden_value = num.sample #hidden_value an instance variable
	end

	def to_s
		@hidden_value
	end
	

end


