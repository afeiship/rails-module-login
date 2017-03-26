class UsersController < ApplicationController
  def login
  end

  def new
    @user = User.new
  end

  def create
    # create
    # render plain: params.inspect
    # render :plain ,params.inspect

    # @user = User.new(user_params)
    # if @user.save
    #   # format.html { redirect_to @user, notice: 'Post was successfully created.' }
    #   redirect_to :root
    # else
    #   render :new
    # end

    @user = User.new(user_params)
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end


  def create_login_session
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      render :login
    end
  end

  private
    # Use `params.require(:user).permit!` but not:'password/password_confirmation OR `password_digest`'
    def user_params
      params.require(:user).permit!  
    end
end
