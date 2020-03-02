class BookclubsController < ApplicationController
  def show
    @bookclub = Bookclub.find(params[:id])
  end

  def index
    @bookclubs = Bookclub.all
  end
end
