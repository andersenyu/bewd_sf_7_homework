# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end


def fizzbuzz(number)
	1.upto number.to_i do |number|
		if (number % 3 == 0 && number % 5 == 0)
			puts "fizzbuzz"
		elsif number % 3 == 0
				puts "fizz"
		elsif number % 5 == 0
				puts "buzz"
		else
			puts number
		end
	end
end

puts "Give me a number"
input = gets.chomp
fizzbuzz(input)

puts "AWESOME SAUCE"


# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here


# Tests
# assert_equal fizzbuzz(1), 1.to_s
# assert_equal fizzbuzz(3), "fizz"
# assert_equal fizzbuzz(4), 4.to_s
# assert_equal fizzbuzz(50), "buzz"
# assert_equal fizzbuzz(15), "fizzbuzz"
# assert_equal fizzbuzz(5175), "fizzbuzz"

# uncomment this code when your tests pass
#1.upto(100) do |number|
#  puts fizzbuzz(number)
#end
