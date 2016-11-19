class GalleriesController < ApplicationController
  def new
    @gallerie = Gallerie.new(:user_id => params[:user])
  end

  def create
    @gallerie = Gallerie.new(gallerie_params)
    @gallerie.user_id = current_user.id
     @gallerie.save

    respond_to do |format|
    format.html {render html: @gallerie}
    format.json {render json: @gallerie.to_json}
    end

  end
end
