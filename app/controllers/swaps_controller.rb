class SwapsController < ApplicationController


  def create
    @book = Book.find(params[:book_id])
    @book.update(hidden:true)
    @swap = Swap.new(book_given: @book, giving_user: @book.user, receiving_user: current_user)
    @swap.save
    redirect_to swap_path(@swap)
  end

  def show
    @swap = Swap.find(params[:id])
    @book_given = @swap.book_given
  end

  def accept
    @swap = Swap.find(params[:id])
    @swap.update(status: 'accepted')
    redirect_to my_swaps_path
  end

  def reject
    @swap = Swap.find(params[:id])
    @swap.update(status: 'rejected')
    redirect_to my_swaps_path
  end

  def complete
    @swap = Swap.find(params[:id])
    @swap.update(status: 'complete')
    redirect_to my_swaps_path
  end
end
