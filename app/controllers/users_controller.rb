class UsersController < ApplicationController
  def login
  end

  def create_login_session
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      redirect_to :login
    end
  end
end
