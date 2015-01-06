# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'pry'
require 'pry-byebug'

def get_story
  puts "Please provide the story title: \n"
  title = gets.strip

  puts "Please provide a category: \n"
  category = gets.strip

  determine_upvotes(title, category)
end

#food * 5, tech * 8, fashion * 3, everything else = 1
def determine_upvotes(title, category)
	upvotes = 1
	if category == "food"
		upvotes *= 5
	elsif category == "tech"
		upvotes *= 8
	elsif category == "fashion"
		upvotes *= 3
	else
		upvotes *= 1
	end
  create_story(title, category, upvotes)
 end

def create_story(title, category, upvotes)
 	 {title: title, category: category, upvotes: upvotes}
 end

def get_the_stories
	stories = []
	story = get_story
	stories.push(story)
	ask_user_for_more
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


#require 'json' -- for API
#require 'rest_client' -- for API
#digg = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json') -- for API
#mashable = JSON.parse(RestClient.get 'http://mashable.com/stories.json') -- for API

