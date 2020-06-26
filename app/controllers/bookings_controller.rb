class BookingsController < ApplicationController
  def create
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new(booking_params)
    @booking.chef = @chef
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to profile_path
    else
      redirect_to chef_path(@chef), alert: "Something went wrong"
    end
  end

  def update
    raise
    @booking = Booking.find(params[:booking_id])
    @booking.update(booking_params)
  end

  def completed?
    @booking = Booking.find(params[:booking_id])
    @booking.completed = true
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nr_guests, :location, :event_details)
  end
end
