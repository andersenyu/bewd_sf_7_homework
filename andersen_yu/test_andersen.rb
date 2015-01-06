puts "What is your name?"
name = gets.chomp.capitalize
puts "Hello #{name}, my name is Andersen. Nice to meet you!"
puts "What do you want to do now?"
action = gets.chomp.downcase

if action == "nothing"
	puts "That's exactly what I was thinking! Let's be best friends!"
else
	puts "I'm actually a lazy person and just want to go home!"
end
