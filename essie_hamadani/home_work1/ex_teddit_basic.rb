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
#3 -  Save every story in a collection <is an array>
#4 -  Print each stories title, category and upvotes to the screen

#Step 1
def get_story #method
	puts "Please provide a story title: \n"
	title = gets.chomp
	#binding.pry # stops and steps thru the program 
	puts "Please provide a category: \n"
	category = gets.chomp
	determine_upvotes(title,category)
	# puts "Title: #{title} Category #{category}.Yay!" #This is called iteration
end 

# story = get_story 

#Step 2
#food * 5 , cats * 7, cars * 4, everything else = 1 
def determine_upvotes(title, category) #pass in 
	upvotes = 1
	if category == 'food'
		upvotes *= 5 # this is a short way of doing upvotes = upvotes * 5
	elsif category == 'cats'
		upvotes *= 7
	elsif category == 'cars'
		upvotes *= 4
	else 
		upvotes *= 1
	end
	create_story(title,category,upvotes)
	# binding.pry
	# puts upvotes
	# return upvotes
	# return title, category, upvotes THIS DIDN'T WORK
end

	# binding.pry
	# upvotes = 1
	# some code here for conditiional votes 
# 3 why do we have to save this as an array?
def create_story(title,category,upvotes)
	# binding.pry
	{title: title, category:category, upvotes: upvotes}
end

def get_the_stories
	
	# stories = [] #create a container for all stories
	# story = get_story #get one story & create hash
	# binding.pry
	# stories.push(story) # stories << story  #pass hash unto stories array
	# #### is there another sstory?? write conditional
	# print_news_feed(stories)
end

get_the_stories

# def print_news_feed(stories)
# 	stories.each do |story|





# story = get_story 