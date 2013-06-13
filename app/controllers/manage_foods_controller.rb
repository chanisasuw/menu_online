class ManageFoodsController < ApplicationController

  def index
    @foods = Food.all.paginate(:page => params[:page], :per_page => 20)
  end

  def new
    @food = Food.new
    @categories = Category.all
  end

  def create
    @food = Food.new
    @food.name = params[:food][:name]
    @food.price = params[:food][:price]
    @food.short_comment = params[:food][:short_comment]
    @food.description = params[:food][:description]
    @food.photo = params[:food][:photo]
    @food.category = Category.find(params[:food][:category])
    if @food.save
    flash[:notice] = "Created menu successfully."
    redirect_to(manage_foods_path)
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.name = params[:food][:name]
    @food.price = params[:food][:price]
    @food.short_comment = params[:food][:short_comment]
    @food.description = params[:food][:description]
    @food.photo = params[:food][:photo] if  params[:food][:photo].present?
    @food.category = Category.find(params[:food][:category])
    if @food.save
    flash[:notice] = "Update menu successfully."
    redirect_to(manage_foods_path)
    end
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to(manage_foods_path)
    flash[:notice] = "Deleted menu successfully."
  end
end
