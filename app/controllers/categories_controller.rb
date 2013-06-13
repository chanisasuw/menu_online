class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params[:category][:name]
    @category.description = params[:category][:description]
    if @category.save
    flash[:notice] = "Created category successfully."
    redirect_to(categories_path)
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to(categories_path)
    flash[:notice] = "Deleted category successfully."
  end
end
