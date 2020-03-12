class BookclubsController < ApplicationController
  def show
    @no_footer = true
    @bookclub = Bookclub.find(params[:id])
    @markers = [{
      lat: @bookclub.latitude,
      lng: @bookclub.longitude,
      image_url: helpers.asset_url('map-icon.png')
    }]
    @book = @bookclub.users[0].books[0] || Book.first
  end

  def index
    # @bookclubs = Bookclub.where(genre: params.dig(:search, :genre))
    # @bookclubs = Bookclub.all if @bookclubs.empty)
    if params[:filter] == "All"
      @bookclubs = Bookclub.all
    elsif params[:filter].present?
      @bookclubs = Bookclub.where(genre: params[:filter])
    end
  end

  def confirmation
    @bookclub = Bookclub.find(params[:bookclub_id])
    current_user.bookclub = @bookclub
    current_user.save
  end
end

# if params[:query].present?
      # sql_query = "title ILIKE :query OR description ILIKE :query OR genre ILIKE :query"
      # @books = Book.where(sql_query, query: "%#{params[:query]}%")
    # else
      # @books = Book.all
    # end
    # if params[:filter].present?
      # @books = @books.where(genre: params[:filter])
    # end
