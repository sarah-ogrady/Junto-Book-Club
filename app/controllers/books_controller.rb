require 'json'
require 'open-uri'

class BooksController < ApplicationController


  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR genre ILIKE :query"
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
    if params[:filter].present?
      @books = @books.where(genre: params[:filter])
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def confirmation
    @book = Book.find(params[:id])
    @genre = @book.genre
  end

  def create
    @book = Book.new(book_params)
    url_info = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{@book.isbn}"

    info_serialized = open(url_info).read
    book_info = JSON.parse(info_serialized)

    @book.title = book_info["items"].first["volumeInfo"]["title"]
    @book.author_name = book_info["items"].first["volumeInfo"]["authors"]
    @book.year = book_info["items"].first["volumeInfo"]["publishedDate"]
    @book.description = book_info["items"].first["volumeInfo"]["description"]

    cover_file = URI.open("http://covers.openlibrary.org/b/isbn/#{@book.isbn}-L.jpg")
    @book.photo.attach(io: cover_file, filename: 'cover.jpg', content_type: 'image/jpg')

    @book.save
    redirect_to confirmation_book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Book successfully deleted'
    redirect_to new_book_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:isbn, :genre)
  end

end

