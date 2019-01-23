class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    # byebug
    @comment = Comment.create(content:params[:content],post_id: params[:post_id],user_id:session[:id])
    # byebug
    redirect_to post_path(@comment.post)

  end


end
