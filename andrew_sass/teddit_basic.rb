#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line 
#2 -  Write a conditional that determine upvotes based on the category
#3 -  Save every story to/in a collection 
#4 -  Print each stories title, category and upvotes to the screen

# Note for TAs: Hey there,
# I'm unsure why my list compiles in the opposite order from how it's inputed by the user. 
# If there's a way to change that, I'd be interested in knowing what I might change in my code to reflect that.

# Gets info from the user, then passing info into next method, calls the next method, get_upvotes
def get_story
	puts "Please provide a story title: \n" 
	title = gets.strip 
	puts "Please provide a category: \n" 
	category = gets.strip
	get_upvotes(title, category)
end

# Upvotes by category: news * 5 , humor * 7, editorial * 4, everything else = 1
def get_upvotes(title, category) 
	upvotes = 1
	if category.downcase == "news"
		upvotes *= 5
	elsif category.downcase == "humor"
		upvotes *= 7
	elsif category.downcase == "editorial"
		upvotes *= 4
	else
		upvotes *= 1
	end
	create_story(title, category, upvotes)
end

def create_story(title, category, upvotes)
	story = {title: title, category: category, upvotes: upvotes}
end

def compile_story_list
	stories = [] 
	story = get_story 
	stories << story 
	puts "Do you have more stories to input: yes or no?"
	more_stories = gets.strip.downcase
	if more_stories == 'yes'
		compile_story_list
	else
	end
	print_teddit_feed(stories)
end

def print_teddit_feed(stories)
	stories.each do |story|
		puts "Title: #{story[:title]}, Category: #{story[:category]} , Upvotes: #{story[:upvotes]}"
	end
end

compile_story_list
