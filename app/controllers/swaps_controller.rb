class SwapsController < ApplicationController


  def create
    @book = Book.find(params[:book_id])
    @swap = Swap.new(book_given: @book, giving_user: @book.owners.first.user, receiving_user: current_user)
    @swap.save
    redirect_to swap_path(@swap)

  end

  def show
    @swap = Swap.find(params[:id])
    @book_given = @swap.book_given

  end
end
