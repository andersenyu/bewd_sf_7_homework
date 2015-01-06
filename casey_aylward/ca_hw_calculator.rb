#this is my calculator app

def multiply(num1, num2)
 num1 * num2
end

def divide(num1, num2)
	num1/num2

end

def remainder(num1, num2)
	num1%num2
end

def add(num1,num2)
	num1 + num2
end

def subtract(num1, num2)
		num1 - num2
end	


puts "Hello! Welcom to my calculator."
puts "Pick a number."
num1 = gets.strip.to_i
puts "Thank you. Pick a second number"
num2 = gets.strip.to_i
puts "Your numbers multiplied is equal to #{multiply(num1,num2)}."
puts "Your numbers divided is equal to #{divide(num1,num2)}."
puts "The remainder of your numbers is equal to #{remainder(num1,num2)}."
puts "Your numbers added is equal to #{add(num1,num2)}."
puts "Your numbers subtracted is equal to #{subtract(num1,num2)}."


#string interpolation — run the code/ method .... turn to string... print in string
#conditional that checks for type integer 
#prompt 

# result = multiply(1,4)
# puts "The result is #{result}"
