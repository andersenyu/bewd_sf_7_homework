require 'pry'
require 'pry-byebug'
#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line 
#2 -  Write a conditional that determine upvotes based on the category
#3 -  Save every story in a collection 
#4 -  Print each stories title, category and upvotes to the screen

def get_story
	puts "Please provide the story title: \n" #"\" adds a line
	title = gets.strip

	puts "Please provide a category: \n"
	category = gets.strip

	determine_upvotes(title, category) #call new method so that it calls next method
end

def hello_world(votes)
	puts votes
end

#food * 5, cats * 7, cars * 4, everything else = 1
def determine_upvotes(title, category) 	#some code for conditionals
	if category == "food"
		upvotes = 5
	elsif category == "cats" 
		upvotes = 7
	elsif category == "cars"
		upvotes = 4
	else 
		upvotes = 1
	end
	#return variables for next method - title, category, upvotes
	create_story_hash(title, category, upvotes)
	return upvotes
end

def create_story_hash(title, category, upvotes)
	story = {title: title, category: category, upvotes: upvotes}
	puts story
end

story = get_story #set what is being returned to a variable "story"