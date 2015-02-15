require 'pry'
require 'pry-byebug'
require 'json'
require 'rest_client'

class Location

	attr_accessor :x, :y, :blocks, :districts, :state, :county, :blockgroup, :tract

	def initialize(x,y)
		@x = x
		@y = y
		get_blocks
		get_district
	end

	def get_json
		@json ||= JSON.load(RestClient.get("http://geocoding.geo.census.gov/geocoder/geographies/coordinates?x=#{x}&y=#{y}&benchmark=Public_AR_Census2010&vintage=Census2010_Census2010&layers=14,16,18&format=json"))
	end

	def get_blocks
		result = get_json
		@blocks = result["result"]["geographies"]["Census Blocks"][0]
		@state = blocks["STATE"]
		@county = blocks["COUNTY"]
		@blockgroup = blocks["BLKGRP"]
		@tract = blocks["TRACT"]
	end

	def get_district
		result = get_json
		@districts = result["result"]["geographies"]["Unified School Districts"][0]
	end

end

# sf = Location.new(-122.423924,37.761784)
# binding.pry
home = Location.new(-72.367476,43.749698)
binding.pry

puts sf.blocks
puts sf.districts


# http://api.census.gov/data/2013/acs5/profile?get=DP02_0001PE&for=state:50&key=5ee3b19f40cac108ddef57079a74fdd979dac326

# for=block+group:0&in=state:06+county:061+tract:990000

# http://api.census.gov/data/2013/acs5?get=NAME,B01001_001E&for=block+group:*&in=state:06+county:061&key=YOUR_KEY_GOES_HERE


#x=-122.423924&y=37.761784