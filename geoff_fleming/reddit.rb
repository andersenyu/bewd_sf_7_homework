require 'json'
require 'typhoeus'
require 'pry'

def get_stories
  stories = Typhoeus.get("http://www.reddit.com/.json")
  stories_hash = JSON.load(stories.response_body)
  stories_array = stories_hash["data"]["children"]
  stroies_collection = []

  stories_array.each do |story|
  	my_reddit_story = {}
  	my_reddit_story[:title] = story["data"]["title"]
  	my_reddit_story[:upvote] = story["data"]["score"]
  	@story_collection.push(my_reddit_story)
  end
  story_collection

end

get_stories