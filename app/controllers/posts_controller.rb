class PostsController < ApplicationController

  def index
    @user = User.find(session[:id])
    @posts = Post.all
  end

  def new
    @user = User.find(session[:id])
    @post = Post.new
  end

  def show
    # byebug
    @message = Message.new 
    @post = Post.find(params[:id])
  end

  def create
    # uploaded_io = params[:post][:img_url]
     # byebug
    # picture = File.open(Rails.root.join(‘public’, ‘uploads’, uploaded_io.original_filename), ‘wb’) do |file|
    #   file.write(uploaded_io.read)
    @post = Post.create(
      title: params[:post][:title],
      recipe: params[:post][:recipe],
      img_url: params[:post][:img_url],
      user_id: session[:id])
      # byebug
    redirect_to post_path(@post)
  end



   # def post_params
   #   params.require(:post).permit(:title, :recipe, :img_url, user_id: session[:id])
   # end



end
