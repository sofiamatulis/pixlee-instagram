class UsersController < ApplicationController

  def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    redirect_to user_url(@user)
  else
    render "new"
  end
end

def new
  @user = User.new
end

def show
  @user = User.find(params[:id])
  @user_galleries = @user.galleries

   galleries = Gallerie.all

  @galerie = Galerie.new
end

private
def user_params
  params.require(:user).permit(:name, :password, :password_confirmation, :email)
end

end
