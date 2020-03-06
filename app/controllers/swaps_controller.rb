class SwapsController < ApplicationController


  def create
    @book = Book.find(params[:book_id])
    @book.update(hidden:true)
    @swap = Swap.new(book_given: @book, giving_user: @book.user, receiving_user: current_user)
    @chatroom = Chatroom.create(name: "somethign", swap: @swap)
    @swap.save
    redirect_to swap_path(@swap)
  end

  def show
    @swap = Swap.find(params[:id])
    @book_given = @swap.book_given
  end

  def complete
    @swap = Swap.find(params[:id])
    @swap.update(complete:true)
  end

  def chatroom
    # add if/else that only displays chatroom if user is part of the associated swap
    @swap = Swap.find(params[:id])
    if current_user == @swap.giving_user || @swap.receiving_user
      @chatroom = @swap.chatroom
      @message = Message.new
    else
      redirect_to root_path
    end
  end
end
