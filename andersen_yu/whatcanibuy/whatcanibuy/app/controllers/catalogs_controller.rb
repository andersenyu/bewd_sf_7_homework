class CatalogsController < ApplicationController

  def index
    if params[:price] 
      @items = EtsyItem.search(params[:price])
    else
      @items = EtsyItem.all
    end

  end

  def show
    catalog
  end

  def etsy_request
    
    price = params['price']
    raw = HTTParty.get("https://openapi.etsy.com/v2/listings/active.json?api_key=0qrz9rgr153q7ztstrf5wbed&max_price=#{price}&limit=100")
    raw = raw.as_json
    @items = [] #make an array
      raw["results"].each do |item|
        my_image_url = get_my_image_url(item['listing_id'])
        e_item = {}
        e_item["listing_id"] = item['listing_id']
        e_item["title"] = item['title']
        e_item["description"] = item['description']
        e_item["price"] = item['price']
        e_item["quantity"] = item['quantity']
        e_item["url"] = item['url']
        e_item["views"] = item['views']
        e_item["num_favorers"] = item['num_favorers']
        e_item["big_image_url"] = my_image_url["big_image"]
        e_item["small_image_url"] = my_image_url["small_image"]

        @items.push(e_item)
    end
  end

  def get_my_image_url(listing_id)
    image_listing = HTTParty.get("https://openapi.etsy.com/v2/listings/#{listing_id}/images?api_key=0qrz9rgr153q7ztstrf5wbed")
    images = {}
    images["small_image"] = JSON.parse(image_listing.body)["results"][0]["url_170x135"]
    images["big_image"] = JSON.parse(image_listing.body)["results"][0]["url_570xN"]
    images
  end



  private

end
