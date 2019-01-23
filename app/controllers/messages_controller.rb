class MessagesController < ApplicationController

  def create
    # byebug
    @text = Message.create(mess_params(:content,:sender_id,:receiver_id))
    post_id = params[:message][:post_id]
    flash[:message] = "Private message sent!"
    redirect_to post_path(post_id)
  end

  private

  def mess_params(*args)
    params.require(:message).permit(args)
  end
end
