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

#
def get_story
	puts "Please provide the story title: \n" #"\" adds a line
	title = gets.strip

	puts "Please provide a category: \n"
	category = gets.strip

	determine_upvotes(title, category) #call new method so that it calls next method
end

#food * 5, cats * 7, cars * 4, everything else = 1
def determine_upvotes(title, category) 	#some code for conditionals
	upvotes = 1
		if category == "food"
			upvotes *= 5
		elsif category == "cats" 
			upvotes *= 7
		elsif category == "cars"
			upvotes *= 4
		else 
			upvotes *= 1
		end
	create_story(title, category, upvotes) #return variables for next method - title, category, upvotes
end

def create_story(title, category, upvotes)
	{title: title, category: category, upvotes: upvotes}
end

def get_the_stories #creates array of stories
	stories = [] #creates container for all stories
	story = get_story #get one story & create hash
	stories.push(story) # pass hash into stories array
	ask_user_for_more #conditional 
	print_news_feed(stories)
end

def ask_user_for_more #conditional 
	#is there another story? write conditional###
	puts "Do you have another story?"
	answer = gets.strip.downcase

	if answer == "no"
		puts "Here are your news:"
	elsif answer == "yes"
		get_the_stories
	else
		puts "Sorry, I didn't understand. Please answer y/n."
		ask_user_for_more
	end
end


def print_news_feed(stories)
	stories.each do |story|
		puts "Title: #{story[:title]}, Category: #{story[:category]}, Upvotes: #{story[:upvotes]}"
	end
end

get_the_stories
