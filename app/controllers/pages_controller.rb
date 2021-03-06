class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @categories = Category.all
  end

  def profile
    @user = current_user
    @bookings = Booking.where(user: current_user)
  end

  def chef_profile
    @user = current_user
    @bookings = Booking.where(user: current_user)
  end
end
