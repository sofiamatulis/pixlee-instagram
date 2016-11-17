class PhotosController < ApplicationController

  def index
    # saving the token in the client
  client = Instagram.client(:access_token => ENV["ACCESS_TOKEN"])
# if there is no tag, use icecream tag!
  @tag_name =  params[:tag_name] ||= 'icecream'
# this is the end point to look for these photos
   @pictures = client.get("tags/#{@tag_name}/media/recent")
  end

end
