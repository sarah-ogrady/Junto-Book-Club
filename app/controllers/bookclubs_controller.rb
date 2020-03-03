class BookclubsController < ApplicationController
  def show
    @no_footer = true
    @bookclub = Bookclub.find(params[:id])
  end

  def index
    @bookclubs = Bookclub.all
  end
end
