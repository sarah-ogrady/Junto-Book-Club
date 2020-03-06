class ChatroomsController < ApplicationController
  def show
    # add if/else that only displays chatroom if user is part of the associated swap
    @swap = Swap.find(params[:swap_id])

    if current_user == @swap.giving_user || @swap.receiving_user
      @chatroom = @swap.chatroom
      @message = Message.new
    else
      redirect_to root_path
    end
  end
end
