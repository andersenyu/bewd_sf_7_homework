class SecretNumber
# this class will generate our secret number for us

	attr_accessor :number

	def initialize ()
		@number = rand(1..10)
	end
end