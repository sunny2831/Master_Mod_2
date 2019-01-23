
class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @user = User.new
  end

  def create

    user = User.find_by(username: params[:user][:username])
      # byebug
    # user.password = params[:user][:password]
    if user && user.authenticate(params[:user][:password])
      session[:id] = user.id
      # binding.pry
      redirect_to user_path(user)
    else
      flash[:errors] = ["invalid username or password"]
      redirect_to "/login"
    end
  end


end
