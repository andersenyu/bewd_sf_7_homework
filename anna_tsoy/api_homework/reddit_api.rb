require 'pry'
require 'pry-byebug'

require "rest_client"
require "JSON"


def get_stories
	stories_hash = JSON.load(RestClient.get("http://www.reddit.com/.json"))

    stories_array = stories_hash["data"]["children"]
    
   story_collection = [] #array of stories

    stories_array.each do |child|
    	my_story = {}
    	my_story[:title] = child["data"]["title"]	
    	my_story[:upvotes] = child["data"]["score"]
    	story_collection.push(my_story)

    end
    front_page(story_collection)
end

def front_page(story_collection)
	story_collection.each do |display|
		puts "Title: #{display[:title]}, Upvote: #{display[:upvotes]}"
	end
end

get_stories #this prints everything