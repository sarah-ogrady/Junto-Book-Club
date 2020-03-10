require 'json'
require 'open-uri'

class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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
    @user = @book.user
    @markers = [{
      lat: @user.latitude,
      lng: @user.longitude,
      image_url: helpers.asset_url('marker.png')
    }]
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
    @book_info = JSON.parse(info_serialized)

    if @book_info["totalItems"].zero?
      flash[:alert] = "that isbn didn't work"
      return render :new
    end

    @book.title = api_hash["title"]
    @book.author_name = api_hash["authors"]
    @book.year = api_hash["publishedDate"]
    @book.description = api_hash["description"]

    cover_file = find_image
    @book.photo.attach(io: cover_file, filename: 'cover.jpg', content_type: 'image/jpg')

    @book.user = current_user
    @book.save
    redirect_to confirmation_book_path(@book)
  end

  def api_hash
    @book_info["items"].select{ |item| item["volumeInfo"]["language"] == "en" }.first["volumeInfo"]
  end

  def find_image
    images = api_hash["imageLinks"]
    if images
      image = images["thumbnail"]
      URI.open(image)
    else
      use_open_library("L")
    end
  end

  def use_open_library(size)
    url = open_library_url(@book.isbn, "L")
    begin
      URI.open(url)
    rescue StandardError
      if size == "L"
        use_open_library("M")
      elsif size == "M"
        use_open_library("S")
      elsif size == "S"
        # Noooope
        # none of this has worked
        URI.open("https://islandpress.org/sites/default/files/400px%20x%20600px-r01BookNotPictured.jpg")
      end
    end
  end

  def open_library_url(isbn, size)
    "http://covers.openlibrary.org/b/isbn/#{isbn}-#{size}.jpg?default=false"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Book successfully deleted'
    redirect_to my_books_path
  end

  private

  def book_params
    params.require(:book).permit(:isbn, :genre)
  end

end

