class PhotosController < ApplicationController

#
  def index
    client = Instagram.client(:access_token => ENV["ACCESS_TOKEN"])
   @pictures = client.get('/v1/tags/icecream/media/recent')
  # render json: pictures
  end

end
