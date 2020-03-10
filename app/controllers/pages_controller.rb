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
        lng: @bookclub.longitude,
        image_url: helpers.asset_url('marker.png')
      }]
  end

  def my_books
    @books = current_user.books

  end


end
