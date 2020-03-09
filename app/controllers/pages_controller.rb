class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def my_swaps
    @swaps = current_user.swaps
  end

  def my_books
    @books = current_user.books
  end


end
