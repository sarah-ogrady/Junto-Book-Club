class BookclubsController < ApplicationController
  def show
    @no_footer = true
    @bookclub = Bookclub.find(params[:id])
    @markers = [{
      lat: @bookclub.latitude,
      lng: @bookclub.longitude
    }]
  end

  def index
    @bookclubs = Bookclub.all
  end

  def confirmation
    @bookclub = Bookclub.find(params[:bookclub_id])
    current_user.bookclub = @bookclub
    current_user.save
  end
end
