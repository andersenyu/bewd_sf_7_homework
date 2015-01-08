#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line  (getting info)
#2 -  Write a conditional that determine upvotes based on the category 
#3 -  Save every story to collection (each story should be a hash)
#4 -  Print each stories title, category and upvotes to the screen
 
require 'pry'
require 'pry-byebug'

def get_info
	puts "what is the title"
	title = gets.strip
	puts "what is the category"
	category = gets.strip
	determine_upvotes(title, category)
end	


def determine_upvotes(title, category)
	if category == "cars"
			upvotes = 200
		elsif category == "cats"
			upvotes = 100
		else 
			upvotes = 5	
	end
	create_story(title,category,upvotes)
end	

def create_story(title,category,upvotes)
	{title: title, category: category, upvotes: upvotes}
end	

#creating an array of hashes

def aggregate_stories
	stories = Array.new
	#the output from get_info will now become part of the array stories 
	story = get_info
	stories << story
	puts "do you have any other stories to add?"
	response = gets.strip
	 while response != "no"
		if response == "yes" #need quotes for string
			#get rid of the Array.new to create new array... don't want to ovverride
			#the output from get_info will now become part of the array stories 
			story = get_info
			stories << story
			puts "do you have any other stories to add?"
			response = gets.strip

		end	
			print_newsfeed(stories)
	end		
end	

#with values of hashes 
def print_newsfeed(stories)
	stories.each do |story|
		puts "title is: #{story[:title]}, category is: #{story[:category]}, upvotes are: #{story[:upvotes]}"
	end
end

#this is the container method that has all of the methods in it.... at the end will call the final method

aggregate_stories

 	




