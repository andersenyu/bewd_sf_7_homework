# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client' #typheous
require 'pry'
require 'pry-byebug'




def getting_stories
	#saves as a hash
	json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
	stories = json["data"]["children"] #this is an array of hashes. Use .class at this place to figure it out
	
	#stories.class is hash use stories.keys
	#{} = hash
	#[] = array to test use stories["keys"][0]
	#.count 25 return 25 top stories

collection = []

	stories.each do |story|	
		storage = {}
		storage[:subreddit] = story["data"]["subreddit"].strip.capitalize
		storage[:title] = story["data"]["title"].strip.capitalize
		storage[:upvotes] = story["data"]["score"].to_i
		collection.push(storage)
	end
	story_format(collection)
end

def story_format(collection)
	collection.each do |display|
		puts "Subreddit: #{display[:subreddit]}, Title: #{display[:title]}, Upvotes: #{display[:upvotes]}"
	end
end

getting_stories

