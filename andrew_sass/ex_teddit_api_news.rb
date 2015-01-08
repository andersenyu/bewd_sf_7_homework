# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest-client'

require 'pry'
require 'pry-byebug'
require 'json'

# Note for TAs: My Digg result seems to start repeating story titles about halfway down the terminal and I can't figure out why it's doing that. Otherwise, it appears to load properly.

mashable_json = JSON.load(RestClient.get('http://mashable.com/stories.json'))
digg_json = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
 
 

 
 
def calculate_upvotes(stories)
 
  stories.each do |story|
    if story[:category].include? 'cats'
      story[:upvotes] *= 5
    elsif (story[:category].include? 'yoga')
    	story[:upvotes] *= 7
    elsif (story[:category].include? 'dancing')
      story[:upvotes] *= 8
    elsif (story[:category].include? 'politics') 
      story[:upvotes] *= 3
  	else (story[:category].include? 'noms') 
  		story[:upvotes] *= 3
    end
  end
 
end
 
 
def show_all_stories(stories)
  if stories.empty?
    puts 'No stories at the moment.'
  end
 
  stories.each do |story|
    if story[:category]
      puts "Story: #{story[:title]}, Category: #{story[:category]}, Upvotes: #{story[:upvotes]}"
 
    else
      puts "Story: #{story[:title]}, Upvotes: #{story[:upvotes]}"
    end
  end
end
 
def mashable_pull
  puts "\n\nHere are the stories from Mashable:"
  stories = []
  mashable_json = JSON.load RestClient.get('http://mashable.com/stories.json')
 
  mashable_json['new'].each do |json_story|
 
    if json_story['channel']
      stories << {
        title: json_story['title'],
        category: json_story['channel'],
        upvotes: json_story['shares']['total']
      }
    else
      stories << {
        title: json_story['title'],
        upvotes: json_story['shares']['total']
      }
    end
 
  end
 
  calculate_upvotes(stories)
  show_all_stories(stories)
end
 
def digg_pull
  puts "\n\nHere are the stories from Digg:"
  stories = []
  digg_json = JSON.load RestClient.get('http://digg.com/api/news/popular.json')
 
  digg_json['data']['feed'].each do |json_story|
    json_story['content']['tags'].each do |tag|
 
    stories << {
      title: json_story['content']['title_alt'],
      category: tag['display'],
      upvotes: json_story['diggs']['count']
    }
    end
  end
 
  calculate_upvotes(stories)
  show_all_stories(stories)
end
 
mashable_pull
digg_pull