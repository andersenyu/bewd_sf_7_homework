#to run a rake task rake get_listings: add_etsy 


namespace :listings do |variable|
	desc "Get Listings from Etsy"
	task :add_etsy_listings => :environment do |t, args|
		EtsyApi.get_listings
		#get etsy listings (sourced from EtsyApi)
		#create new Etsy item object for each listing in our database
		puts "Added Etsy Listings"
	end
	
end