require 'pry'
require 'pry-byebug'
require 'colorize'
require 'json'
require 'rest-client'
# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Channel, Upvotes)
# Add each story to an array and display your "Front page"

hash = JSON.load(RestClient.get('http://mashable.com/stories.json')).to_hash
# puts
stories = []
def parse_hash(hash,stories)
  arr = []
  hash.each do |key, value|  
    if value.class.to_s == "Array"
      (value.length - 1).times do |i|
        arr = value[i]
        title = arr["title"]
        channel = arr["channel"]
        determine_upvotes(title, channel, stories)
      end
    end
  end
  print_news_feed(stories)
end

def determine_upvotes(title, channel, stories)
  upvotes = 1
  if channel == 'World'
    upvotes *= 7
  elsif channel == 'Entertainment'
    upvotes *= 5
  elsif channel == 'Watercooler'
    upvotes *= 4
  else
    upvotes
  end 
  create_story(title, channel, upvotes, stories)
end

def get_stories(story,stories)
  # stories = []
  stories << story
end

def create_story(title,channel,upvotes,stories)
  story = {title: title, channel: channel, upvotes: upvotes}
  get_stories(story,stories)
end

def print_news_feed(stories)
  stories.each do |story,value|
    puts "Title: #{story[:title].green}\nChannel: #{story[:channel].green}\nUpvotes: #{story[:upvotes].to_s.green}\n\n"
  end
end

parse_hash(hash,stories)
