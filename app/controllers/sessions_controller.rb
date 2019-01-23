
class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      binding.pry
      redirect_to user_path(@user)
    else
      flash[:errors] = ["invalid username or password"]
      redirect_to "/login"
    end
  end


end
