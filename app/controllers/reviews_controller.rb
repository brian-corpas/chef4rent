class ReviewsController < ApplicationController
  def new
    @booking = Review.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.save
    redirect_to profile_path
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end
end
