def multiply(num1, num2)
	num1 * num2
end

result = multiply(1,4)
puts "The result is #{result}"

def divide(num1, num2)
	num2 / num1
end

result2 = divide(16,4)
puts "The result is #{result2}"

def remainder(num1, num2)
	num2 % num1
end

result3 = remainder(10,3)
puts "The result is #{result3}"

def add(num1, num2)
	num1 + num2
end

result4 = add(24,42)
puts "The result is #{result4}"

# conditional that checks for type integer. If it isn't, it should say "I can't do this"

# Should be able to use prompt feature, and there's a technique to get stuff from the command line