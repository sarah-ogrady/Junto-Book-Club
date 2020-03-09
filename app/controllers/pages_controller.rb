class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

 def show

 end

  def home
  end

  def my_swaps
    @swaps = current_user.swaps
  end

  def my_bookclub
    @bookclub = current_user.bookclub
    @markers = [{
        lat: @bookclub.latitude,
        lng: @bookclub.longitude
      }]
  end


end
