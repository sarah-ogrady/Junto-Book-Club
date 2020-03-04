class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR genre ILIKE :query"
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end
end
