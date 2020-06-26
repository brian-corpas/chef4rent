class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_chef, only: [:edit, :update, :destroy]

  def index
    @chefs = policy_scope(Chef).order(created_at: :desc)
    unless params[:category].present?
      @chefs = Chef.all
    else
      @category = Category.find_by(name: params[:category][:category_id])
      @chefs = Chef.where(category_id: @category)
    end
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
    authorize @chef
    # @reviews = Review.where(chef: @chef)
  end

  def new
    @chef = Chef.new
    @chef.user = current_user
    authorize @chef
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    authorize @chef
    if @chef.save
      current_user.is_chef = true
      current_user.save
      redirect_to chef_profile_path
    else
      render "new"
    end
  end

  def edit
    authorize @chef
  end

  def update
    authorize @chef
    if @chef.update(chef_params)
      redirect_to chef_profile_path
    else
      render "edit"
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:name, :description, :category_id, :location, :price_range)
  end

  def set_chef
    @chef = current_user.chef
  end
end
