class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    end
  end

  def welcome

  end

  def delete
    # Remove the user id from the session
    session[:current_user] = nil
    current_user.username=nil
  end

  def page_requires_login
  end

end