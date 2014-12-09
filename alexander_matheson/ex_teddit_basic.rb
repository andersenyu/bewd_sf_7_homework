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

def get_story_title
	#Get the Story Title
	puts "Please tell me the title of your favorite story?"
	story_title = gets.chomp
	story_title.downcase!
end

def get_category
	#Get the category
	puts "Please tell me the category of the story (ex. Adventure, Drama etc."
	category = gets.chomp
	category.downcase!
end

def check_user
	#see if user wants to add more stories
	puts "do you want to add another story (Y or N)"
	answer = gets.chomp
	answer.downcase!
	if answer == "y"
		answer = true
	else
		answer = false
	end	
end

begin 
	stories = Hash.new
	stories[:story_title] = get_story_title
	stories[:category] = get_category
end until check_user == false

puts stories
