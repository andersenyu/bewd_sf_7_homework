require 'pry'

def multiply(num1, num2)
  num1 * num2
end

def divide(num1,num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def add(num1, num2)
  num1 + num2
end

num1 = 10
num2 = 5

product = multiply(num1,num2)
puts "#{num1} times #{num2} is #{product}"

quotient = divide(num1,num2)
puts "#{num1} divided by #{num2} is #{quotient}"

remainder = remainder(num1,num2)
puts "The remainder of #{num1} divided by #{num2} is #{remainder}"

sum = add(num1,num2)
puts "The sum of #{num1} and #{num2} is #{sum}"