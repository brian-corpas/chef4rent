class BookingsController < ApplicationController
  def create
    @chef = Chef.find(params[:chef_id])
    raise
    @booking = Booking.new(booking_params)
    @booking.chef = @chef
    @booking.user = current_user
    if @booking.save
      redirect_to chef_path(@chef)
    else
      redirect_to chef_path(@chef), alert: "Something went wrong"
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nr_guests, :location, :event_details)
  end
end
