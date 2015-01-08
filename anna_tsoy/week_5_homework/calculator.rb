def multiply (num1, num2)
num1 * num2
end

multiplication_result = multiply(1,4)
print multiplication_result
puts "The result is #{multiplication_result}"

def divide (num1, num2)
num1 / num2
end

division_result = divide(9,3)
print division_result
puts "The result of division is #{division_result}"


def remainder (num1, num2)
num1 % num2
end

modulo_result = remainder(9,2)
print modulo_result
puts "The remainder of division is #{modulo_result}"

def add (num1, num2)
num1 + num2
end

addition_result = add(9238102, 1231892)
print addition_result
puts "The result of addition is #{addition_result}"


#conditional that checks for type integer
if modulo_result.is_a? Integer
puts "#{modulo_result} is an integer!"
else
puts "#{modulo_result} is not an integer!"
end

#prompt
puts "Gimme somethang!"
user_input = gets.chomp
if user_input.is_a? String
puts "You gave me a #{user_input}!"
else
puts "You gave me a #{user_input}!"
end
