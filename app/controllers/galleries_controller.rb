class GalleriesController < ApplicationController
  def new
    @gallery = Gallery.new
  end

  def create
  @gallery = Gallery.new(gallery_params)
  if @gallery.save
    redirect_to gallery_url
  else
    render :new
  end
end

def index
   @galleries = Gallery.all
end

def show
  @gallery = Gallery.find(params[:id])
end




private
def gallery_params
  params.require(:gallery).permit(:name)
end




end
