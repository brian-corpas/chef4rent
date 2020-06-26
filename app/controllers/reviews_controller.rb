class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    @review.save
    redirect_to profile_path
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
