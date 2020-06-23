class ChefsController < ApplicationController

  def index
    @chefs = Chef.all

  def show
    @chef = Chef.find(params[:id])
  end

  def new
    @chef = Chef.new
    current_user.chef = true
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
  end


  private

  def chef_params
    params.require(:chef).permit(:name, :description, :category, :location, :price_range)
end
