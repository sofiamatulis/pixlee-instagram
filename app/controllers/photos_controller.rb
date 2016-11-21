class PhotosController < ApplicationController
  helper_method :pull_time

  def index
    # saving the token in the client
  client = Instagram.client(:access_token => ENV["ACCESS_TOKEN"])
# if there is no tag, use icecream tag!
  @tag_name =  params[:tag_name] ||= 'icecream'
  @start_date = params[:start_date]
  @end_date = params[:end_date] 
# this is the end point to look for these photos
   @response = client.get("tags/#{@tag_name}/media/recent")
 # render json: pull_time
 # render json: @pictures
 if @start_date && @end_date && @tag_name
   @pictures = pull_time
 else
   @pictures = @response
 end

    if current_user
      @gallery = Gallery.where(user_id: current_user.id).pluck(:name)
    end

  end

  def add
    gallery = Gallery.find_by(name: params[:gallery_name])
    puts gallery
    @photos = Photo.new(thumbnail_url: params[:picture_url], gallery_id: gallery.id)
    if @photos.save
      redirect_to root_url
    end

  end


  private
  def pull_time
    pulled_photos = @response.each do |picture|
      if @start_date >= picture.created_time && @end_date <= picture.created_time
      return picture
       puts picture.created_time
      end
    end
    return pulled_photos
  end

  def comment_tag
    @pictures.each do |picture|
      if picture.comment_tag includes?(tag)
        return picture
      end
    end
  end

end
