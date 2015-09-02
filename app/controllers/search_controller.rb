class SearchController < ApplicationController
  def index
  	url = 'http://www.gettyimages.in/photos/'+params[:search]+'?family=creative&phrase='+params[:search]+'&sort=best&excludenudity=true'
  	@response = HTTParty.get(url)
    
    htm = Nokogiri::HTML(@response.body)
    @list_of_images = htm.css('.image-section a.search-result-asset-link')
    @list_of_images.each do |img|
      img.attributes["href"].value = "http://www.gettyimages.in"+img.xpath('@href').to_s
    end
  end
end
