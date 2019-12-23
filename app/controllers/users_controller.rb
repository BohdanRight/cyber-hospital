class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :delete]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :password))
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def delete
    # Remove the user id from the session
    session[:current_user] = nil
    current_user.username=nil
  end
end