class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def my_swaps
    @swaps = current_user.swaps.where(complete: false)
    @chatroom = Chatroom.new
  end


end
