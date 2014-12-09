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
require 'pry'
require 'pry-byebug'
# require 'json'

def get_story
	puts "Please enter the title of the story."
	title = gets.strip
	puts "Now, please enter the category of the story."
	category = gets.strip
	determine_upvotes(title,category)
	# test_message(title,category,upvotes)	
end

def test_message(title,category,upvotes)
	puts "Title: #{title}.\nCategory: #{category}.\nUpvotes: #{upvotes}."
end

def determine_upvotes(title,category)
	upvotes = 1
	if category.downcase == "cars"
		upvotes *= 100
	elsif category.downcase == "food"
		upvotes *= 5
	elsif category.downcase == "cats"
		upvotes *= 7
	else
		upvotes *= 1
	end
	create_story(title,category,upvotes)
end

def create_story(title,category,upvotes)
	{title: title, category: category, upvotes: upvotes}
end

def aggregate_stories
	stories = []				#create a container for all stories
	story = get_story			#get one story and create a hash
	stories.push(story) 		#pass has into stories array
	puts "Do you have another story to add? Please type yes or no."
	answer = gets.strip
	until answer == "no"
		if answer == "yes"
			story = get_story
			stories.push(story)
			puts "Do you have another story to add? Please type yes or no."
		else
			puts "Please enter either yes or no."
		end
		answer = gets.strip
	end
	print_news_feed(stories)	#print all stories
			


	#call get_story until someone says 'no' or otherwise signals "no more stories"
	#do you have another story? yes or no?
	#pushing every story into the stories array
	#if we're done, print all the stories, using another method
end

def print_news_feed(stories)
	stories.each do |story|
		puts "Title: #{story[:title]}, Category: #{story[:category]}, Upvotes: #{story[:upvotes]}"
		# puts story[:title]
		# story
		# #each story is a hash
	end
end

# puts get_story

aggregate_stories
# test_message



# reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))

# determine_upvotes(title,category)
# aggregated_stories = {}

