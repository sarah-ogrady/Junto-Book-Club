class BookclubsController < ApplicationController
  def show
    @bookclub = Bookclub.find(params[:id])
  end
end
