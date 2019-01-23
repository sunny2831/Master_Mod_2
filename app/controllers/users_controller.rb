class UsersController < ApplicationController
  def index
    # @user = User.find(session[:id])
    @user = User.new
    # @users = User.all
  end

  def show
    # byebug
    @user = User.find(session[:id])

  end

  def create
    # byebug
    @user = User.create(user_params)
    @user.password = params[:user][:password]
    if @user.valid?
        session[:id] = @user.id
      redirect_to user_path(@user)
    else
      # byebug
      render 'index'
    end

  end

  def destroy
    session.delete :id
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :img_url, :password)
  end
end
