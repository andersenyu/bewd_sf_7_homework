puts "Welcome to your calculator!"

def multiply(num1, num2)
 num1 * num2
end

def divide(num1, num2)
	num1 / num2
end

def remainder(num1, num2)
 num1 % num2
end

def add(num1, num2)
	num1 + num2
end

#conditional that checks for type integer 
#prompt 

random_number = Array(1..100)
num1 = random_number.sample
num2 = random_number.sample



multi = multiply(num1,num2)
puts "Multiplying #{num1} and #{num2} equals #{multi}"


div = divide(num1,num2)
puts "Dividing #{num1} with #{num2} equals #{div}"


remain = remainder(num1,num2)
puts "The remainder of dividing #{num1} with #{num2} is #{remain}"


adding = add(num1,num2)
puts "Adding #{num1} to #{num2} equals #{adding}"

