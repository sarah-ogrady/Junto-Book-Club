class BookclubsController < ApplicationController
  def show
    @no_footer = true
    @bookclub = Bookclub.find(params[:id])
    @markers = [{
      lat: @bookclub.latitude,
      lng: @bookclub.longitude,
      image_url: helpers.asset_url('map-icon.png')
    }]
    @book = @bookclub.users[0].books[0]
  end

  def index
    @bookclubs = Bookclub.all
    if params[:filter].present?
      @bookclubs = @bookclubs.where(genre: params[:filter])
    end
  end

  def confirmation
    @bookclub = Bookclub.find(params[:bookclub_id])
    current_user.bookclub = @bookclub
    current_user.save
  end
end
