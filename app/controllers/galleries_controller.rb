class GalleriesController < ApplicationController
  def new
    @gallery = Gallery.new
  end

  def create
  @gallery = Gallery.new(gallery_params)
  @gallery.user = current_user

  if @gallery.save
    redirect_to galleries_url
  else
    render :new
  end
end

  def index
     @galleries = Gallery.where(user_id: current_user.id)
  end

  def show
    @gallery = Photo.where(gallery_id: params[:id])
  end


  private
  def gallery_params
    params.require(:gallery).permit(:name)
  end

end

#  creating new galleries only when the user is logged in
