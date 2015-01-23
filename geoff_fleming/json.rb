require 'json'
require 'pry'
require 'rest-client'

class Frontpage
	attr_accessor :stories_collection

		def initialize
			@stories_collection = []
			get_api_stories()
		end

		def get_api_stories
	  	get_reddit_data()

		end

	 	


	def get_reddit_data
		reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
    	normailize_reddit_data(reddit_json)

		 

	end

	def normailize_reddit_data(reddit_json)
		reddit_stories = reddit_data(reddit_json)

		reddit_stories.each do |story|
			my_reddit_story = {}
			my_reddit_story[:title] = story["data"]["title"]
			my_reddit_story[:upvote] = story["data"]["score"]
			@stories_collection.push(my_reddit_story)

		end
	
	end 

	def print_front_page
		count = 1
    	@stories_collection.each do |story|
 		puts "-------------Stories: #{count}-----------------"
 		puts story[:title]
 		puts story[:upvote]
 		puts "------------------------------"
 		count = count + 1
	end
end




first_page = Frontpage.new
first_page

