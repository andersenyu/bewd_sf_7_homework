require 'httparty'
require 'json'

module EtsyApi

	#API_KEY="0qrz9rgr153q7ztstrf5wbed"
	#https://openapi.etsy.com/v2/listings/active.json?api_key=API_KEY

	def self.connect_to_listings(limit_size=50) #price #etsy doesn't seem to allow for more than 100 at a time
		response = HTTParty.get("https://openapi.etsy.com/v2/listings/active.json?api_key=0qrz9rgr153q7ztstrf5wbed&limit=#{limit_size.to_i}")
		json_response = JSON.parse(response.body) #this is a hash
		items = json_response["results"] #this is an array that contains hashes
	end

	def self.get_listings
		items = EtsyApi.connect_to_listings(100)
		items.each do |json_listing|
			# if listing does not exist
			if !listing_exists(json_listing["listing_id"])
				#only add new listings_id

				my_image_url = EtsyApi.get_listing_url(json_listing["listing_id"])

				EtsyItem.create(
					listing_id:json_listing["listing_id"], 
					title:json_listing["title"], 
					description:json_listing["description"], 
					price:json_listing["price"], 
					quantity:json_listing["quantity"], 
					url:json_listing["url"], 
					views:json_listing["views"], 
					num_favorers:json_listing["num_favorers"],
					provider_update_to: DateTime.strptime(json_listing["state_tsz"].to_s, '%s'),
					big_image_url: my_image_url["big_image"],
					small_image_url: my_image_url["small_image"]
				)
			else 
				etsy_db_listing = EtsyItem.where(listing_id: json_listing['listing_id']).first
				# EtsyItem where looking at database listing_id compared to json_listing
				 
				if etsy_db_listing.provider_updated_to != DateTime.strptime(json_listing["state_tsz"].to_s, '%s')

				etsy_db_listing.update(
					listing_id:listing["listing_id"], 
					title:listing["title"], 
					description:listing["description"], 
					price:listing["price"], 
					quantity:listing["quantity"], 
					url:listing["url"], 
					views:listing["views"], 
					num_favorers:listing["num_favorers"],
					provider_update_to: DateTime.strptime(listing["state_tsz"].to_s, '%s'),
					big_image_url: my_image_url["big_image"],
					small_image_url: my_image_url["small_image"]
					)
				end
			end
		end
	end
	

	def self.listing_exists(listing_id)
		#we have the listing id in our database, but we don't want twice 
		EtsyItem.where(listing_id: listing_id).exists?
	end

	def self.get_listing_url(listing_id)
		image_listing = HTTParty.get("https://openapi.etsy.com/v2/listings/#{listing_id}/images?api_key=0qrz9rgr153q7ztstrf5wbed")
		images = {}
		images["small_image"] = JSON.parse(image_listing.body)["results"][0]["url_170x135"]
		images["big_image"] = JSON.parse(image_listing.body)["results"][0]["url_570xN"]
		images
	end
	#use httparty to get image_listing
	#use json to parse it
	#Then get the first to select the first image [0]
	#Then select entry in url_170x135:
	# return the url string
	
	#model
	#add column to table 


	# json_response = JSON.parse(image_listing.body)["results"]
	# images = {}
	# images["full_size"] = json_response[0]["url_170x135"]
	# images["small_one"] = json_response[0]["url_75x75"]
	# images

end