class ManageFoodsController < ApplicationController

  def index
    @foods = Food.all.paginate(:page => params[:page], :per_page => 20)
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new
    @food.name = params[:food][:name]
    @food.price = params[:food][:price]
    @food.short_comment = params[:food][:short_comment]
    @food.description = params[:food][:description]
    if @food.save
    flash[:notice] = "Save food successfully."
    redirect_to(manage_foods_path)
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to(manage_foods_path)
    flash[:notice] = "Deleted user successfully."
  end
end
