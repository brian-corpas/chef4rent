class ChefsController < ApplicationController
  def index
    @chefs = policy_scope(Chef).order(created_at: :desc)
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
    authorize @chef
  end

  def new
    @chef = Chef.new
    authorize @chef
    current_user.is_chef = true
    current_user.save
  end

  def create
      @chef = Chef.new(chef_params)
      authorize @chef
      if @chef.save
        redirect_to chef_path(@chef)
      else
        render "new"
      end
  end

  private

    def chef_params
      params.require(:chef).permit(:name, :description, :category, :location, :price_range)
    end
end
