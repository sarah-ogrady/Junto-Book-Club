class BookclubsController < ApplicationController
  def show
    @no_footer = true
    @bookclub = Bookclub.find(params[:id])
  end

  def index
    @bookclubs = Bookclub.all
    if params[:filter].present?
      @bookclubs = @bookclubs.where(genre: params[:filter])
    end
  end
end
