# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page'

require 'pry'
require 'pry-byebug'
require 'json'
require 'rest_client'


def get_some_stories(number_of_stories)
	story_array = []
	0.upto number_of_stories do |index|
		story = get_story(index)
		story_array.push story
	end
	#binding.pry
	print_stories(story_array)
end

def get_story(index)
	reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
	stories = reddit_json["data"]["children"]
	title = stories[index]["data"]["title"]
	category = stories[index]["data"]["subreddit"]
	votes = stories[index]["data"]["ups"]
	{title: title, category: category, votes: votes}
end

def print_stories(story_array)
		story_array.each do |story|
			puts "Title: #{story[:title]}, Category:#{story[:category]}, Votes: #{story[:votes]}"
		end
end

puts "Front Page"
get_some_stories(5)
