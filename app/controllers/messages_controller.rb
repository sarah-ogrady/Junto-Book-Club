class MessagesController < ApplicationController
  def create
    @swap = Swap.find(params[:swap_id])
    @chatroom = @swap.chatroom
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to chatroom_swap_path(@swap, @chatroom)
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
