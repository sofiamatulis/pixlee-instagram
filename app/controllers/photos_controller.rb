class PhotosController < ApplicationController

  helper_method :pull_time

  def index
    # saving the token in the client
  client = Instagram.client(:access_token => ENV["ACCESS_TOKEN"])
# if there is no tag, use icecream tag! if there is no date, use this random date
  @tag_name =  params[:tag_name] ||= 'icecream'
  @start_date = params[:start_date] ||= "1479571118"
  @end_date = params[:end_date] ||= "1479571117"
# this is the end point to look for these photos
   @pictures = client.get("tags/#{@tag_name}/media/recent")
 # render json: pull_time
 # render json: @pictures

  end

  private
  def pull_time
    @pictures.each do |picture|
      if @start_date >= picture.created_time && @end_date <= picture.created_time
      return picture
       puts picture.created_time
      end
    end
  end

end
