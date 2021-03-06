class UsersController < ApplicationController

  def create
  @user = User.new(user_params)
    if @user.save
    session[:user_id] = @user.id
    redirect_to root_url
    else
    render "new"
    end
  end

  def new
    @user = User.new
  end


  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end

end

#  creating new users (signing up with name, password, password confirmation and email)
