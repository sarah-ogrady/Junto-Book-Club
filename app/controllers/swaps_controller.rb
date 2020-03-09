class SwapsController < ApplicationController


  def create
    @book = Book.find(params[:book_id])
    @book.update(hidden: true)
    @swap = Swap.new(book_given: @book, giving_user: @book.user, receiving_user: current_user)
    @swap.save
    redirect_to swap_path(@swap)
  end

  def show
    @swap = Swap.find(params[:id])
    @book_given = @swap.book_given
  end

  def reject
    @swap = Swap.find(params[:id])
    @swap.update(status: 'rejected')
    @book = @swap.book_given
    @book.update(hidden: false)
    flash[:notice] = 'Swap successfully rejected'
    redirect_to my_swaps_path
  end

  def complete
    @swap = Swap.find(params[:id])
    @swap.update(status: 'complete')
    flash[:notice] = 'Swap marked as complete'
    redirect_to my_swaps_path
  end

  def choose_book
    @swap = Swap.find(params[:id])
    @user = @swap.giving_user
    @books = @user.books
  end

  def book_chosen
    @swap = Swap.find(params[:id])
    @book = Book.find(params[:book_id])
    @swap.book_received = @book
    @book.update(hidden: true)
    @swap.update(status: 'bookchosen')
    redirect_to my_swaps_path
  end

  def destroy
    @swap = Swap.find(params[:id])
    @book = @swap.book_given
    @book.update(hidden: false)
    @swap.destroy
    flash[:notice] = 'Swap request cancelled'
    redirect_to my_swaps_path
  end

  def chatroom
    # add if/else that only displays chatroom if user is part of the associated swap
    @swap = Swap.find(params[:id])
    if current_user == @swap.giving_user || @swap.receiving_user
      @message = Message.new
    else
      redirect_to root_path
    end
  end
end
