class PostsController < ApplicationController
  def index
    @user = User.find(session[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # uploaded_io = params[:post][:img_url]
     byebug
    # picture = File.open(Rails.root.join(‘public’, ‘uploads’, uploaded_io.original_filename), ‘wb’) do |file|
    #   file.write(uploaded_io.read)
    @post = Post.create(title: [:post][:title], recipe: [:post][:recipe], img_url: [:post][:img_url], user_id: session[:id])
    redirect_to post_path(@post)
  end



   # def post_params
   #   params.require(:post).permit(:title, :recipe, :img_url, user_id: session[:id])
   # end



end
