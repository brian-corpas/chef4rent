class ChefsController < ApplicationController

  def index
    @chefs = Chef.all
    
  def show
    @chef = Chef.find(params[:id])
  end
end
