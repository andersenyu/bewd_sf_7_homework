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

def get_story
	puts "Name your story"
	title = gets.chomp
	puts "What category is it?"
	category = gets.chomp
	determine_votes(title, category)
end


# bikes = 5, songs = 3, everything else = 1
def determine_votes(title, category) #pass in variables
	if category == 'bikes'
		votes = 5
	elsif category == 'songs'
		votes = 3
	else
		votes = 1
	end
	create_story(title, category, votes)
end

def create_story(title, category, votes)
	{title: title, category: category, votes:votes}	
end

#prints a nice list of stories
def print_news_feed(story_list)
		# binding.pry
		story_list.each do |story|
		line_width = 40
		puts "Title: #{story[:title]}".ljust(line_width) + "Category: #{story[:category]}".ljust(line_width/4) + "Votes: #{story[:votes]}".rjust(line_width/2)
		end
end

def get_some_stories
	story_list = []
	story = get_story
	# binding.pry
	story_list << story
	while true
	puts "Would you like to enter another story?"
		answer = gets.chomp.downcase
		if
		# binding.pry
		answer == "yes"
			story = get_story
			story_list << story
		elsif
			answer == "no"
			puts "OK BYE!"
			break
		else
			puts "Please say yes or no!"
		end
	end
	# binding.pry
	print_news_feed(story_list)

end

get_some_stories


